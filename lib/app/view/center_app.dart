import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_bloc/app/theme/color.dart';
import 'package:study_bloc/app/view/cart_view.dart';
import 'package:study_bloc/app/view/favorite_view.dart';
import 'package:study_bloc/app/view/home_view.dart';
import 'package:study_bloc/app/view/personal_view.dart';
import 'package:study_bloc/generated/resource.dart';

class CenterApp extends StatefulWidget {
  const CenterApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _CenterApp();
}

class _CenterApp extends State<CenterApp> {
  int _currentPage = 0;
  final lIcon = [
    {"icon": R.ASSETS_SVG_IC_HOME_SVG, "name": "Home"},
    {"icon": R.ASSETS_SVG_IC_FAVORITE_SVG, "name": "Favorite"},
    {"icon": R.ASSETS_SVG_IC_CART_SVG, "name": "Cart"},
    {"icon": R.ASSETS_SVG_IC_PERSONAL_SVG, "name": "Personal"},
  ];
  final tabs = [
    const HomePage(),
    const FavoritePage(),
    const CartPage(),
    const PersonalPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        items: lIcon
            .map(
              (d) => BottomNavigationBarItem(
                icon: SvgPicture.asset(d["icon"]!),
                activeIcon: SvgPicture.asset(d["icon"]!, color: colorOrangeButton),
                label: d["name"],
              ),
            )
            .toList(),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        iconSize: 40,
        selectedFontSize: 16,
        selectedItemColor: colorOrangeButton,
        unselectedItemColor: Colors.black,
        unselectedFontSize: 14,
        onTap: (d) {
          setState(
            () {
              _currentPage = d;
            },
          );
        },
      ),
    );
  }
}
