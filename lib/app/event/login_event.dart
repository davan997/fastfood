import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class EnterPhoneNumberEvent extends LoginEvent {
  final String phoneNumber;
  const EnterPhoneNumberEvent(this.phoneNumber);
  @override
  List<Object?> get props => [phoneNumber];
}

class EnterPasswordEvent extends LoginEvent {
  final String password;
  const EnterPasswordEvent(this.password);
  @override
  List<Object?> get props => [password];
}

class ShowPasswordEvent extends LoginEvent {
  final bool isShowPassword;
  const ShowPasswordEvent(this.isShowPassword);
  @override
  List<Object?> get props => [isShowPassword];
}

class ShowForgotPasswordEvent extends LoginEvent {
  final bool isForgotPassword;
  const ShowForgotPasswordEvent(this.isForgotPassword);
  @override
  List<Object?> get props => [isForgotPassword];
}

class EnterEmailEvent extends LoginEvent {
  final String email;
  const EnterEmailEvent(this.email);
  @override
  List<Object?> get props => [email];
}
