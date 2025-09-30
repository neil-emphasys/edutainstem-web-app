import 'package:bloc/bloc.dart';
import 'package:edutainstem/core/enums/sign_in_type_enum.dart';
import 'package:edutainstem/core/services/auth_storage_services.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:edutainstem/domain/repositories/firebase_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_auth_bloc.freezed.dart';
part 'firebase_auth_event.dart';
part 'firebase_auth_state.dart';

class FirebaseAuthBloc extends Bloc<FirebaseAuthEvent, FirebaseAuthState> {
  final FirebaseAuthRepository firebaseAuthRepository;

  FirebaseAuthBloc(this.firebaseAuthRepository) : super(const _StateInitial()) {
    on<_EventStarted>((event, emit) async {
      // emit(const _StateLoading());
      // final result = await googleSignIn();

      final user = FirebaseAuth.instance.currentUser;

      // await user?.updateDisplayName('Neil Cajulao');

      if (user != null) {
        emit(
          _StateAuthenticated(user: user, signInType: SignInTypeEnum.google),
        );
      }
    });

    /* on<_EventReSignIn>((event, emit) async {
      emit(const _StateLoading());
      // final result = await googleSignIn();

      bool isLoggedIn = await AuthStorageService.isSignedIn();

      if (isLoggedIn) {
        final userStored = await AuthStorageService.getUser();
        final accessToken = 
        final result = await reSignIn(
          accessToken: event.accessToken,
          idToken: event.idToken,
        );

        result.fold(
          (failure) => emit(_StateError(message: failure)),
          (user) => emit(_StateAuthenticated(user: user.user!)),
        );
      }
    }); */

    on<_EventGoogleSignIn>((event, emit) async {
      emit(const _StateLoading());
      // final result = await googleSignIn();

      final bool isLoggedIn = await AuthStorageService.isSignedIn();
      final result = await firebaseAuthRepository.googleSignIn();

      result.fold(
        (failure) => emit(_StateError(message: failure)),
        (user) => emit(
          _StateAuthenticated(
            user: user.user!,
            signInType: SignInTypeEnum.google,
          ),
        ),
      );
    });

    on<_EventSignIn>((event, emit) async {
      emit(const _StateLoading());
      final result = await firebaseAuthRepository.signIn(
        event.email,
        event.password,
      );
      result.fold(
        (failure) => emit(_StateError(message: failure.message)),
        (user) => emit(
          _StateAuthenticated(
            user: user.data,
            signInType: SignInTypeEnum.emailAndPassword,
          ),
        ),
      );
    });

    on<_EventSignUp>((event, emit) async {
      emit(const FirebaseAuthState.loading());
      final result = await firebaseAuthRepository.signUp(event.data);
      result.fold(
        (failure) => emit(_StateError(message: failure.message)),
        (user) => emit(
          _StateAuthenticated(
            user: user.data,
            signInType: SignInTypeEnum.emailAndPassword,
          ),
        ),
      );
    });

    on<_EventSignOut>((event, emit) async {
      emit(const FirebaseAuthState.loading());
      final result = await firebaseAuthRepository.signOut();
      result.fold(
        (failure) => emit(_StateError(message: failure)),
        (_) => emit(const _StateUnauthenticated()),
      );
    });
  }
}
