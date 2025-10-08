part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial({required UserModel user}) = _Initial;
  const factory SignUpState.loading() = _Loading;
  const factory SignUpState.signedUp({required UserModel user}) = _SignedUp;
  const factory SignUpState.error({
    required String title,
    required String message,
  }) = _Error;
}
