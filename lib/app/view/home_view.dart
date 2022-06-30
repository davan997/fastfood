import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study_bloc/app/theme/app_style.dart';
import 'package:study_bloc/app/theme/color.dart';
import 'package:study_bloc/app/utils/loop_widget.dart';
import 'package:study_bloc/generated/resource.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allSafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(R.ASSETS_SVG_IC_HOUSE_SVG),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Home", style: typoVietNamProBold17),
                        Text(
                          "21-42-34, Banjara Hills, Hyder",
                          style: typoVietNamProBold16.copyWith(color: colorText60),
                        )
                      ],
                    ),
                  ),
                  Image.asset(R.ASSETS_PNG_IC_HEART_PNG)
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 26, top: 8.5, bottom: 8.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.4),
                ),
                child: Row(
                  children: const [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
