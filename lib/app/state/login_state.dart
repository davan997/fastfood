import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  final String phoneNumber;
  final String password;
  final String email;
  final bool showPassword;
  final bool showForgotPassword;
  const LoginState(this.phoneNumber, this.password, this.email, this.showPassword, this.showForgotPassword);
}

class InitialState extends LoginState {
  const InitialState(String phoneNumber, String password, String email, bool showPassword, bool showForgotPassword)
      : super(phoneNumber, password, email, showPassword, showForgotPassword);
  @override
  List<Object?> get props => [phoneNumber, password, email, showPassword, showForgotPassword];
}

class EnterPhoneNumberState extends LoginState {
  EnterPhoneNumberState(LoginState oldState, String phoneNumber)
      : super(phoneNumber, oldState.password, oldState.email, oldState.showPassword, oldState.showForgotPassword);

  @override
  List<Object?> get props => [phoneNumber];
}

class EnterPasswordState extends LoginState {
  EnterPasswordState(LoginState oldState, String password)
      : super(oldState.phoneNumber, password, oldState.email, oldState.showPassword, oldState.showForgotPassword);
  @override
  List<Object?> get props => [password];
}

class EnterEmailState extends LoginState {
  EnterEmailState(LoginState oldState, String email)
      : super(oldState.phoneNumber, oldState.password, email, oldState.showPassword, oldState.showForgotPassword);
  @override
  List<Object?> get props => [email];
}

class ShowPasswordState extends LoginState {
  ShowPasswordState(LoginState oldState, bool showPassword)
      : super(oldState.phoneNumber, oldState.password, oldState.email, showPassword, oldState.showForgotPassword);
  @override
  List<Object?> get props => [showPassword];
}

class ShowForgotPasswordState extends LoginState {
  ShowForgotPasswordState(LoginState oldState, bool showForgotPassword)
      : super(oldState.phoneNumber, oldState.password, oldState.email, oldState.showPassword, showForgotPassword);
  @override
  List<Object?> get props => [showForgotPassword];
}
