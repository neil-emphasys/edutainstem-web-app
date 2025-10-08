import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthDataSource {
  Future<UserCredential?> reSignInWithCredentials({
    required String accessToken,
    required String idToken,
  });
  Future<UserModel> signInWithCredentials();
  Future<UserModel> signInWithEmailAndPassword(String email, String password);
  Future<UserModel> signUpWithEmailAndPassword(UserModel data);
  Future<void> signOut();
  Future<UserModel> getUserByUid(String uid);
}
