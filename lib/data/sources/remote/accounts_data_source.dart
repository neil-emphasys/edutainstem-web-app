import 'package:edutainstem/domain/models/auth/auth_model.dart';

abstract class AccountsDataSource {
  Future<List<UserModel>> fetchAccounts();
}
