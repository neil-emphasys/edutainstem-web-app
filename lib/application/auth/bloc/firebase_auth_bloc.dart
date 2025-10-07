import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:edutainstem/core/enums/sign_in_type_enum.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:edutainstem/domain/repositories/firebase_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
    _sub = FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        add(const FirebaseAuthEvent.authChanged(null));
      } else {
        add(FirebaseAuthEvent.authChanged(user));
      }
    });

    on<_EventStarted>((event, emit) async {
      // Optional: eagerly check current user while the stream wakes up
      final user = FirebaseAuth.instance.currentUser;
      debugPrint('USER: $user');
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
      if (user == null) {
        emit(const FirebaseAuthState.unauthenticated());
      } else {
        emit(
          FirebaseAuthState.authenticated(
            user: user,
            signInType: SignInTypeEnum.google, // or map from your repo
          ),
        );
      }
    });

    on<_EventGoogleSignIn>((event, emit) async {
      emit(const FirebaseAuthState.loading());
      final result = await firebaseAuthRepository.googleSignIn();
      result.fold(
        (failure) => emit(FirebaseAuthState.error(message: failure)),
        (userCred) => emit(
          FirebaseAuthState.authenticated(
            user: userCred.user!,
            signInType: SignInTypeEnum.google,
          ),
        ),
      );
    });

    on<_EventSignIn>((event, emit) async {
      emit(const FirebaseAuthState.loading());
      final result = await firebaseAuthRepository.signIn(
        event.email,
        event.password,
      );
      result.fold(
        (failure) => emit(FirebaseAuthState.error(message: failure.message)),
        (resp) => emit(
          FirebaseAuthState.authenticated(
            user: resp.data,
            signInType: SignInTypeEnum.emailAndPassword,
          ),
        ),
      );
    });

    on<_EventSignUp>((event, emit) async {
      emit(const FirebaseAuthState.loading());
      final result = await firebaseAuthRepository.signUp(event.data);
      result.fold(
        (failure) => emit(FirebaseAuthState.error(message: failure.message)),
        (resp) => emit(
          FirebaseAuthState.authenticated(
            user: resp.data,
            signInType: SignInTypeEnum.emailAndPassword,
          ),
        ),
      );
    });

    on<_EventSignOut>((event, emit) async {
      emit(const FirebaseAuthState.loading());
      final result = await firebaseAuthRepository.signOut();
      result.fold(
        (failure) => emit(FirebaseAuthState.error(message: failure)),
        (_) => emit(const FirebaseAuthState.unauthenticated()),
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
