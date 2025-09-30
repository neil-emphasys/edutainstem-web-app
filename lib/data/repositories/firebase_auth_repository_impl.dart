import 'package:dartz/dartz.dart';
import 'package:edutainstem/core/auth/firebase_auth_error_mapper.dart';
import 'package:edutainstem/core/network/base_state.dart';
import 'package:edutainstem/data/sources/remote/firebase_auth_data_source.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:edutainstem/domain/repositories/firebase_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepositoryImpl implements FirebaseAuthRepository {
  final FirebaseAuthDataSource _authRemoteDataSource;

  FirebaseAuthRepositoryImpl(this._authRemoteDataSource);

  @override
  Future<Either<String, UserCredential>> googleSignIn() async {
    try {
      final userCredential = await _authRemoteDataSource
          .signInWithCredentials();
      return Right(userCredential!);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<FailedState, SuccessState<User>>> signIn(
    String email,
    String password,
  ) async {
    try {
      final user = await _authRemoteDataSource.signInWithEmailAndPassword(
        email,
        password,
      );
      return Right(SuccessState(user!));
    } catch (e) {
      return Left(FailedState(message: e.toString()));
    }
  }

  @override
  Future<Either<FailedState, SuccessState<User>>> signUp(AuthModel data) async {
    try {
      final user = await _authRemoteDataSource.signUpWithEmailAndPassword(data);
      return Right(SuccessState(user!));
    } catch (e) {
      if (e is FirebaseAuthException) {
        return Left(FailedState(message: getFirebaseAuthErrorMessage(e)));
      } else {
        return Left(FailedState(message: e.toString()));
      }
    }
  }

  @override
  Future<Either<String, void>> signOut() async {
    try {
      await _authRemoteDataSource.signOut();
      return const Right(null);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, UserCredential>> reSignIn({
    required String accessToken,
    required String idToken,
  }) async {
    try {
      final userCredential = await _authRemoteDataSource
          .reSignInWithCredentials(accessToken: accessToken, idToken: idToken);
      return Right(userCredential!);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, AuthUserModel>> getUserByUid(String uid) async {
    try {
      final userCredential = await _authRemoteDataSource.getUserByUid(uid);
      return Right(userCredential);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
