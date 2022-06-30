import 'package:flutter/material.dart';
import 'package:study_bloc/app/utils/loop_widget.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PersonalPage();
  }
}

class _PersonalPage extends State<PersonalPage> {
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
