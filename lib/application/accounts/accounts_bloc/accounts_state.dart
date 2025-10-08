part of 'accounts_bloc.dart';

@freezed
abstract class AccountsState with _$AccountsState {
  const factory AccountsState.initial() = _Initial;
  const factory AccountsState.loading() = _Loading;
  const factory AccountsState.done({required List<UserModel> accounts}) = _Done;
}
