import 'package:flutter/material.dart';
import 'package:study_bloc/app/utils/loop_widget.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

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
