import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_bloc/app/event/login_event.dart';
import 'package:study_bloc/app/state/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const InitialState("", "", "", false, false)) {
    on<EnterPhoneNumberEvent>((event, emit) => EnterPhoneNumberState(state, event.phoneNumber));
    on<EnterPasswordEvent>((event, emit) => EnterPasswordState(state, event.password));
    on<EnterEmailEvent>((event, emit) => EnterEmailState(state, event.email));
    on<ShowPasswordEvent>((event, emit) => ShowPasswordState(state, event.isShowPassword));
    on<ShowForgotPasswordEvent>((event, emit) => ShowForgotPasswordState(state, event.isForgotPassword));
  }
}
