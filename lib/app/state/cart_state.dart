import 'package:equatable/equatable.dart';

class CartState extends Equatable {
  final String address;
  final String ward;
  final String district;
  final String province;
  final int currentIndex;
  const CartState(
      {required this.address,
      required this.ward,
      required this.district,
      required this.province,
      required this.currentIndex});

  @override
  List<Object?> get props => [address, ward, district, province, currentIndex];
}

class ChangeCartState extends CartState {
  ChangeCartState(
    CartState oldState, {
    String? address,
    String? ward,
    String? district,
    String? province,
    int? currentIndex,
  }) : super(
          address: address ?? oldState.address,
          ward: ward ?? oldState.ward,
          district: district ?? oldState.district,
          province: province ?? oldState.province,
          currentIndex: currentIndex ?? oldState.currentIndex,
        );
}
