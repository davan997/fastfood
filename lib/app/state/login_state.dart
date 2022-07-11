class LoginState {
  final String phoneNumber;
  final String password;
  final String email;
  final bool showPassword;
  final bool showForgotPassword;
  const LoginState({
    required this.phoneNumber,
    required this.password,
    required this.email,
    required this.showPassword,
    required this.showForgotPassword,
  });
}

class ChangeLoginState extends LoginState {
  ChangeLoginState(
    LoginState oldState, {
    String? phoneNumber,
    String? password,
    String? email,
    bool? showPassword,
    bool? showForgotPassword,
  }) : super(
            phoneNumber: phoneNumber ?? oldState.phoneNumber,
            password: password ?? oldState.password,
            email: email ?? oldState.email,
            showPassword: showPassword ?? oldState.showPassword,
            showForgotPassword: showForgotPassword ?? oldState.showForgotPassword);
}
