import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_bloc/app/event/onboarding_event.dart';
import 'package:study_bloc/app/state/onboarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const InitialState()) {
    on<ChangeCurrentIndexEvent>((event, emit) => emit(ChangeCurrentIndexState(event.currentIndex)));
  }
}
