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

      result.fold((l) {}, (r) {
        emit(_Done(accounts: r.data));
      });
    });

    on<_SetEnabled>((event, emit) async {
      final currentState = state as _Done;

      // emit(const _Loading());

      final result = await accountsRepository.setUserEnabled(
        uid: event.uid,
        enabled: event.newStatus,
      );

      result.fold((l) {}, (r) {
        final newAccounts = currentState.accounts
            .map((u) => u.id == event.uid ? u.copyWith(enabled: r.data) : u)
            .toList();

        emit(_Done(accounts: newAccounts));
      });
    });
  }
}
