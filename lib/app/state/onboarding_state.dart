import 'package:equatable/equatable.dart';

class OnBoardingState extends Equatable {
  final int currentIndex;
  const OnBoardingState(this.currentIndex);
  @override
  List<Object?> get props => [currentIndex];
}

class InitialState extends OnBoardingState {
  const InitialState() : super(0);
}

class ChangeCurrentIndexState extends OnBoardingState {
  const ChangeCurrentIndexState(int currentIndex) : super(currentIndex);
}
