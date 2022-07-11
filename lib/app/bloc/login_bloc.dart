import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_bloc/app/event/login_event.dart';
import 'package:study_bloc/app/state/login_state.dart';
import 'package:study_bloc/app/view/center_app.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : super(const LoginState(
            phoneNumber: "", password: "", email: "", showPassword: false, showForgotPassword: false)) {
    on<EnterPhoneNumberEvent>(
      (event, emit) => emit(ChangeLoginState(state, phoneNumber: event.phoneNumber)),
    );
    on<EnterPasswordEvent>(
      (event, emit) => emit(ChangeLoginState(state, password: event.password)),
    );
    on<EnterEmailEvent>(
      (event, emit) => emit(ChangeLoginState(state, email: event.email)),
    );
    on<ShowPasswordEvent>(
      (event, emit) => emit(ChangeLoginState(state, showPassword: event.isShowPassword)),
    );
    on<ShowForgotPasswordEvent>(
      (event, emit) => emit(ChangeLoginState(state, showForgotPassword: event.isForgotPassword)),
    );
    on<SubmitLoginEvent>(
        (event, emit) => Navigator.push(event.context, MaterialPageRoute(builder: (context) => const CenterApp())));
  }
}
