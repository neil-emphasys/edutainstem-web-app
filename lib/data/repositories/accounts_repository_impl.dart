import 'package:dartz/dartz.dart';
import 'package:edutainstem/core/network/base_state.dart';
import 'package:edutainstem/data/sources/remote/accounts_data_source.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:edutainstem/domain/repositories/accounts_repository.dart';

class AccountsRepositoryImpl implements AccountsRepository {
  final AccountsDataSource _dataSource;

  AccountsRepositoryImpl(this._dataSource);

  @override
  Future<Either<FailedState, SuccessState<List<UserModel>>>>
  fetchAccounts() async {
    try {
      final result = await _dataSource.fetchAccounts();
      return Right(SuccessState(result));
    } catch (e) {
      return Left(FailedState(message: e.toString()));
    }
  }

  @override
  Future<Either<FailedState, SuccessState<bool>>> setUserEnabled({
    required String uid,
    required bool enabled,
  }) async {
    try {
      final result = await _dataSource.setUserEnabled(
        uid: uid,
        enabled: enabled,
      );
      return Right(SuccessState(result));
    } catch (e) {
      return Left(FailedState(message: e.toString()));
    }
  }
}
