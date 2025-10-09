part of 'switch_cubit.dart';

@freezed
sealed class SwitchState with _$SwitchState {
  const factory SwitchState.initial({
    required bool current,
    @Default(false) bool update,
  }) = _Initial;
  const factory SwitchState.loading() = _Loading;
}
