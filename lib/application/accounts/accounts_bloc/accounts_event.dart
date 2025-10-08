part of 'accounts_bloc.dart';

@freezed
abstract class AccountsEvent with _$AccountsEvent {
  const factory AccountsEvent.started() = _Started;
  const factory AccountsEvent.getAccounts() = _GetAccounts;
}
