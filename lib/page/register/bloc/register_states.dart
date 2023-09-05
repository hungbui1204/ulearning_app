class RegisterStates {
  final String username;
  final String email;
  final String password;
  final String rePassword;
  const RegisterStates(
      {required this.username,
      required this.email,
      required this.password,
      required this.rePassword});
  RegisterStates copyWith({
    String? username,
    String? email,
    String? password,
    String? rePassword,
  }) {
    return RegisterStates(
        username: username ?? this.username,
        email: email ?? this.email,
        password: password ?? this.password,
        rePassword: rePassword ?? this.rePassword);
  }
}

class InitRegisterState extends RegisterStates {
  const InitRegisterState()
      : super(username: '', email: '', password: '', rePassword: '');
}
