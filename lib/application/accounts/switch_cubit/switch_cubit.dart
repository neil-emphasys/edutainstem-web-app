import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'switch_cubit.freezed.dart';
part 'switch_state.dart';

class SwitchCubit extends Cubit<SwitchState> {
  SwitchCubit() : super(const SwitchState.initial(current: false));

  void setInitialState(bool newBool) {
    emit(SwitchState.initial(current: newBool));
  }

  void changeStatus(bool newBool) async {
    emit(const SwitchState.loading());
    await Future.delayed(const Duration(seconds: 5));
    emit(SwitchState.initial(current: newBool));
  }
}
