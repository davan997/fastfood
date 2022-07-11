import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class CartEvent extends Equatable {}

class GoToSearchEvent extends CartEvent {
  final BuildContext context;
  GoToSearchEvent(this.context);

  @override
  List<Object?> get props => [context];
}

class PickItem extends CartEvent {
  @override
  List<Object?> get props => [];
}

class PickRestaurant extends CartEvent {
  @override
  List<Object?> get props => [];
}

class CurrentBannerThemeEvent extends CartEvent {
  final int currentIndex;
  CurrentBannerThemeEvent(this.currentIndex);

  @override
  List<Object?> get props => [currentIndex];
}
