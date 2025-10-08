import 'package:dartz/dartz.dart';
import 'package:edutainstem/core/network/base_state.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthRepository {
  Future<Either<String, UserCredential>> reSignIn({
    required String accessToken,
    required String idToken,
  });
  Future<Either<FailedState, SuccessState<UserModel>>> googleSignIn();
  Future<Either<FailedState, SuccessState<UserModel>>> signIn(
    String email,
    String password,
  );
  Future<Either<FailedState, SuccessState<UserModel>>> signUp(UserModel data);
  Future<Either<String, void>> signOut();
  Future<Either<String, UserModel>> getUserByUid(String uid);
}
