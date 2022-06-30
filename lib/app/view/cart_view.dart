import 'package:flutter/material.dart';
import 'package:study_bloc/app/utils/loop_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CartPage();
  }
}

class _CartPage extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allSafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: const [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
