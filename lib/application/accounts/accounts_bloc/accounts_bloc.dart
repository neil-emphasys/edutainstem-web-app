import 'package:bloc/bloc.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:edutainstem/domain/repositories/accounts_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accounts_bloc.freezed.dart';
part 'accounts_event.dart';
part 'accounts_state.dart';

class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  final AccountsRepository accountsRepository;

  AccountsBloc(this.accountsRepository) : super(const _Initial()) {
    on<_GetAccounts>((event, emit) async {
      emit(const _Loading());

      final result = await accountsRepository.fetchAccounts();
      debugPrint('RESULT: $result');

      result.fold((l) {}, (r) {
        emit(_Done(accounts: r.data));
      });
    });
  }
}
