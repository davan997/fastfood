import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_bloc/app/event/cart_event.dart';
import 'package:study_bloc/app/state/cart_state.dart';
import 'package:study_bloc/app/view/search_view.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc()
      : super(const CartState(
            address: "Đa vạn", ward: "Châu Khê", district: "Từ Sơn", province: "Bắc Ninh", currentIndex: 0)) {
    on<GoToSearchEvent>(
      (event, emit) => Navigator.push(event.context, MaterialPageRoute(builder: (context) => const SearchView())),
    );
    on<CurrentBannerThemeEvent>((event, emit) => emit(ChangeCartState(state, currentIndex: event.currentIndex)));
  }
}
