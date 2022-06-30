import 'package:flutter/material.dart';
import 'package:study_bloc/app/utils/loop_widget.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FavoritePage();
  }
}

class _FavoritePage extends State<FavoritePage> {
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
