import 'package:dartz/dartz.dart';
import 'package:edutainstem/core/network/base_state.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';

abstract class AccountsRepository {
  Future<Either<FailedState, SuccessState<List<UserModel>>>> fetchAccounts();
  Future<Either<FailedState, SuccessState<bool>>> setUserEnabled({
    required String uid,
    required bool enabled,
  });
}
