import 'package:firebase_auth/firebase_auth.dart';

String getFirebaseAuthErrorMessage(FirebaseAuthException e) {
  switch (e.code) {
    case 'invalid-email':
      return 'The email address is badly formatted.';
    case 'user-disabled':
      return 'This user has been disabled. Please contact support.';
    case 'user-not-found':
      return 'No user found for that email.';
    case 'wrong-password':
      return 'Incorrect password provided.';
    case 'email-already-in-use':
      return 'The email address is already in use by another account.';
    case 'operation-not-allowed':
      return 'Email/password accounts are not enabled.';
    case 'weak-password':
      return 'The password is too weak.';
    case 'network-request-failed':
      return 'Network error. Please check your connection.';
    case 'requires-recent-login':
      return 'Please re-authenticate to perform this action.';
    case 'invalid-verification-code':
      return 'The verification code is invalid.';
    case 'invalid-verification-id':
      return 'The verification ID is invalid.';
    default:
      return 'An unexpected error occurred. Please try again.';
  }
}
