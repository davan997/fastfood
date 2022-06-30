import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_bloc/app/bloc/login_bloc.dart';
import 'package:study_bloc/app/bloc/onboarding_bloc.dart';
import 'package:study_bloc/app/router/router.dart';
import 'package:study_bloc/app/view/cart_view.dart';
import 'package:study_bloc/app/view/center_app.dart';
import 'package:study_bloc/app/view/login_view.dart';
import 'package:study_bloc/app/view/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnBoardingBloc>(create: (context) => OnBoardingBloc()),
        BlocProvider<LoginBloc>(create: (context) => LoginBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Lil Anh Đỗ",
        supportedLocales: const [
          Locale("en", ""),
          Locale("vn", ""),
        ],
        initialRoute: Routers.onBoardingView,
        routes: {
          Routers.onBoardingView: (context) => const OnBoarding(),
          Routers.loginView: (context) => const LoginView(),
          Routers.centerApp: (context) => const CenterApp(),
          Routers.cartView: (context) => const CartPage(),
        },
      ),
    );
  }
}
