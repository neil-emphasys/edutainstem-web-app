part of 'firebase_auth_bloc.dart';

@freezed
class FirebaseAuthEvent with _$FirebaseAuthEvent {
  // Initial event, no parameters needed
  const factory FirebaseAuthEvent.started() = _EventStarted;

  // Sign-in event with email and password as parameters
  const factory FirebaseAuthEvent.googleSignIn() = _EventGoogleSignIn;

  const factory FirebaseAuthEvent.reSignIn() = _EventReSignIn;

  // Sign-in event with email and password as parameters
  const factory FirebaseAuthEvent.signIn({
    required String email,
    required String password,
  }) = _EventSignIn;

  // Sign-up event with email, password, and optional displayName
  const factory FirebaseAuthEvent.signUp(AuthModel data) = _EventSignUp;

  // Sign-out event (no parameters)
  const factory FirebaseAuthEvent.signOut() = _EventSignOut;

  // Reset password event with email parameter
  const factory FirebaseAuthEvent.resetPassword({required String email}) =
      _EventResetPassword;

  // Internal: driven by authStateChanges()
  const factory FirebaseAuthEvent.authChanged(User? user) = _AuthChanged;
}
