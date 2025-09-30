import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthDataSource {
  Future<UserCredential?> reSignInWithCredentials({
    required String accessToken,
    required String idToken,
  });
  Future<UserCredential?> signInWithCredentials();
  Future<User?> signInWithEmailAndPassword(String email, String password);
  Future<User?> signUpWithEmailAndPassword(AuthModel data);
  Future<void> signOut();
  Future<AuthUserModel> getUserByUid(String uid);
}
