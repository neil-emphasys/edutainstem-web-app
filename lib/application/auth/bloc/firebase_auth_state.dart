part of 'firebase_auth_bloc.dart';

@freezed
class FirebaseAuthState with _$FirebaseAuthState {
  // Initial state
  const factory FirebaseAuthState.initial() = _StateInitial;

  // Loading state
  const factory FirebaseAuthState.loading() = _StateLoading;

  // Authenticated state with a User parameter
  const factory FirebaseAuthState.authenticated({
    required User user,
    required SignInTypeEnum signInType,
  }) = _StateAuthenticated;

  // Unauthenticated state
  const factory FirebaseAuthState.unauthenticated() = _StateUnauthenticated;

  // Error state with a message parameter
  const factory FirebaseAuthState.error({
    required String message,
  }) = _StateError;
}
