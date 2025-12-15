import 'package:bloc/bloc.dart';
import 'package:edutainstem/domain/repositories/accounts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'switch_cubit.freezed.dart';
part 'switch_state.dart';

class SwitchCubit extends Cubit<SwitchState> {
  final AccountsRepository accountsRepository;

  SwitchCubit(this.accountsRepository)
    : super(const SwitchState.initial(current: false));

  void setInitialState(bool newBool) {
    emit(SwitchState.initial(current: newBool));
  }

  void changeStatus({required String docId, required bool newBool}) async {
    final currentState = state;

    emit(const SwitchState.loading());

    final result = await accountsRepository.setUserEnabled(
      uid: docId,
      enabled: newBool,
    );

    result.fold(
      (l) {
        emit(currentState);
      },
      (r) {
        emit(SwitchState.initial(current: newBool, update: true));
      },
    );
  }
}
