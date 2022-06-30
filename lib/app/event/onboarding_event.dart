import 'package:equatable/equatable.dart';

abstract class OnBoardingEvent extends Equatable {
  const OnBoardingEvent();
}

class ChangeCurrentIndexEvent extends OnBoardingEvent {
  final int currentIndex;
  const ChangeCurrentIndexEvent(this.currentIndex);
  @override
  List<Object?> get props => [currentIndex];
}
