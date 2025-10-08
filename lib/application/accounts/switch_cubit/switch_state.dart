part of 'switch_cubit.dart';

@freezed
sealed class SwitchState with _$SwitchState {
  const factory SwitchState.initial({required bool current}) = _Initial;
  const factory SwitchState.loading() = _Loading;
}
