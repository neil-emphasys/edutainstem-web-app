import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:edutainstem/core/constants/constants.dart';
import 'package:edutainstem/core/constants/firebase_constants.dart';
import 'package:edutainstem/core/enums/sign_in_type_enum.dart';
import 'package:edutainstem/core/services/auth_storage_services.dart';
import 'package:edutainstem/core/services/loader_services.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:edutainstem/domain/repositories/firebase_auth_repository.dart';
import 'package:edutainstem/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_auth_bloc.freezed.dart';
part 'firebase_auth_event.dart';
part 'firebase_auth_state.dart';

enum AuthStatus { unknown, authenticated, unauthenticated, loading }

class FirebaseAuthBloc extends Bloc<FirebaseAuthEvent, FirebaseAuthState> {
  final FirebaseAuthRepository firebaseAuthRepository;
  StreamSubscription<User?>? _sub;

  FirebaseAuthBloc(this.firebaseAuthRepository)
    : super(const FirebaseAuthState.initial()) {
    // 1) Keep router in sync with real Firebase state
    _sub = FirebaseAuth.instance.authStateChanges().listen((user) async {
      final map = await AuthStorageService.getMap(
        AppConstants.userModelStoreIDKey,
      );

      UserModel? userModel;

      // if (map == null) return;
      if (map != null) {
        userModel = UserModel.fromJsonWithDocId(map, forCache: true);
      }

      if (user == null && userModel == null) {
        add(const FirebaseAuthEvent.authChanged(null));
      } else {
        add(FirebaseAuthEvent.authChanged(user, userModel: userModel));
      }
    });

    on<_EventStarted>((event, emit) async {
      // Optional: eagerly check current user while the stream wakes up
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        emit(const FirebaseAuthState.unauthenticated());
      } else {
        emit(
          FirebaseAuthState.authenticated(
            user: user,
            signInType: SignInTypeEnum.google, // or unknown/default if needed
          ),
        );
      }
    });

    // Internal event driven by authStateChanges()
    on<_AuthChanged>((event, emit) {
      final user = event.user;
      final userModel = event.userModel;

      if (user == null) {
        emit(const FirebaseAuthState.unauthenticated());
      } else {
        emit(
          FirebaseAuthState.authenticated(
            user: user,
            userModel: userModel,
            signInType: SignInTypeEnum.google, // or map from your repo
          ),
        );
      }
    });

    on<_EventGoogleSignIn>((event, emit) async {
      emit(const FirebaseAuthState.loading());
      final result = await firebaseAuthRepository.googleSignIn();
      result.fold(
        (failure) => emit(FirebaseAuthState.error(message: failure.message)),
        (resp) {
          final user = FirebaseAuth.instance.currentUser;

          if (user == null) return;

          AuthStorageService.saveMap(
            AppConstants.userModelStoreIDKey,
            resp.data.toJsonIncludingDocId(forCache: true),
          );

          emit(
            FirebaseAuthState.authenticated(
              user: user,
              userModel: resp.data,
              signInType: SignInTypeEnum.google,
            ),
          );
        },
      );
    });

    on<_EventSignIn>((event, emit) async {
      emit(const FirebaseAuthState.loading());

      it<LoaderServices>().show(status: 'Signing In...');

      final result = await firebaseAuthRepository.signIn(
        event.email,
        event.password,
      );

      it<LoaderServices>().dismiss();

      result.fold(
        (failure) {
          emit(
            FirebaseAuthState.error(
              message: FirebaseConstants.users.mapErrorCodes(failure.message),
            ),
          );
          // emit(const FirebaseAuthState.initial());
        },
        (resp) {
          final user = FirebaseAuth.instance.currentUser;

          if (user == null) return;

          AuthStorageService.saveMap(
            AppConstants.userModelStoreIDKey,
            resp.data.toJsonIncludingDocId(forCache: true),
          );

          emit(
            FirebaseAuthState.authenticated(
              user: user,
              userModel: resp.data,
              signInType: SignInTypeEnum.emailAndPassword,
            ),
          );
        },
      );
    });

    on<_EventSignUp>((event, emit) async {
      emit(const FirebaseAuthState.loading());
      final result = await firebaseAuthRepository.signUp(event.data);
      result.fold(
        (failure) => emit(FirebaseAuthState.error(message: failure.message)),
        (resp) {
          final user = FirebaseAuth.instance.currentUser;

          if (user == null) return;

          AuthStorageService.saveMap(
            AppConstants.userModelStoreIDKey,
            resp.data.toJsonIncludingDocId(forCache: true),
          );

          emit(
            FirebaseAuthState.authenticated(
              user: user,
              userModel: resp.data,
              signInType: SignInTypeEnum.emailAndPassword,
            ),
          );
        },
      );
    });

    on<_EventSignOut>((event, emit) async {
      emit(const FirebaseAuthState.loading());
      final result = await firebaseAuthRepository.signOut();
      result.fold(
        (failure) => emit(FirebaseAuthState.error(message: failure)),
        (_) {
          AuthStorageService.removeMap(AppConstants.userModelStoreIDKey);
          emit(const FirebaseAuthState.unauthenticated());
        },
      );
    });
  }

  AuthStatus get status {
    return state.map(
      initial: (_) => AuthStatus.unknown,
      loading: (_) => AuthStatus.loading,
      authenticated: (_) => AuthStatus.authenticated,
      unauthenticated: (_) => AuthStatus.unauthenticated,
      error: (_) => AuthStatus.unauthenticated,
    );
  }

  bool get isAuthed => status == AuthStatus.authenticated;

  @override
  Future<void> close() {
    _sub?.cancel();
    return super.close();
  }
}
