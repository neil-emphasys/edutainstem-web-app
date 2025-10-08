part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;
  /* const factory SignUpEvent.dataChanged({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    LanguageEnum? preferredLanguage,
  }) = _DataChanged; */
  const factory SignUpEvent.signUp({required UserModel user}) = _SignUp;
}
