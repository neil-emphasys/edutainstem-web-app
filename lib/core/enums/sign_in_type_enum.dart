enum SignInTypeEnum {
  google,
  emailAndPassword;

  bool get isGoogle => this == google;
  bool get isEmailAndPassword => this == emailAndPassword;
}
