import 'package:dartz/dartz.dart';
import 'package:edutainstem/core/network/base_state.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthRepository {
  Future<Either<String, UserCredential>> reSignIn({
    required String accessToken,
    required String idToken,
  });
  Future<Either<String, UserCredential>> googleSignIn();
  Future<Either<FailedState, SuccessState<User>>> signIn(
    String email,
    String password,
  );
  Future<Either<FailedState, SuccessState<User>>> signUp(AuthModel data);
  Future<Either<String, void>> signOut();
  Future<Either<String, AuthUserModel>> getUserByUid(String uid);
}
