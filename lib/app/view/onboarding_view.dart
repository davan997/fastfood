import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_bloc/app/bloc/onboarding_bloc.dart';
import 'package:study_bloc/app/event/onboarding_event.dart';
import 'package:study_bloc/app/state/onboarding_state.dart';
import 'package:study_bloc/app/theme/app_style.dart';
import 'package:study_bloc/app/theme/color.dart';
import 'package:study_bloc/app/utils/loop_widget.dart';
import 'package:study_bloc/app/view/login_view.dart';
import 'package:study_bloc/generated/resource.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffFF4B3A),
              Color(0xffFF4B3A),
            ],
          ),
        ),
        child: allSafeArea(
          child: SingleChildScrollView(
            child: BlocBuilder<OnBoardingBloc, OnBoardingState>(
              builder: (context, state) {
                final OnBoardingBloc onBoardingBloc = BlocProvider.of<OnBoardingBloc>(context);
                final imageOnBoarding = [
                  {
                    "tittle": "Save Food with our new Feature!",
                    "image": R.ASSETS_PNG_ONBOARDING_1_PNG,
                  },
                  {
                    "tittle": "Set preferences for multiple users from various restaurants!",
                    "image": R.ASSETS_PNG_ONBOARDING_2_PNG,
                  },
                  {
                    "tittle": "Fast, rescued food at your service.",
                    "image": R.ASSETS_PNG_ONBOARDING_3_PNG,
                  },
                ];
                final pageController = PageController();
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 4.5),
                      alignment: Alignment.centerRight,
                      width: MediaQuery.of(context).size.width,
                      child: InkWell(
                        onTap: () {
                          pageController.animateToPage(2,
                              duration: const Duration(milliseconds: 500), curve: Curves.linear);
                        },
                        child: Text(
                          "SKIP >>",
                          style: typoVietNamProBold18.copyWith(
                            color: const Color.fromRGBO(255, 255, 255, 0.6),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 24),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 73,
                            width: 73,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Image.asset(
                            R.ASSETS_PNG_IC_LOGO_PNG,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 575,
                      child: PageView.builder(
                        controller: pageController,
                        onPageChanged: (d) {
                          onBoardingBloc.add(ChangeCurrentIndexEvent(d));
                        },
                        itemCount: imageOnBoarding.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Text(
                                textAlign: TextAlign.center,
                                imageOnBoarding[index]["tittle"]!,
                                style: index == 1
                                    ? typoVietNamProMetropolis40.copyWith(color: Colors.white)
                                    : typoVietNamProMetropolis55.copyWith(color: Colors.white),
                              ),
                              const SizedBox(height: 10),
                              Positioned(
                                left: index == 2 ? -15 : -7,
                                bottom: index == 2 ? -150 : 0,
                                child: Image.asset(
                                  imageOnBoarding[index]["image"]!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    state.currentIndex != 2
                        ? Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(top: 20),
                            height: 9,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: imageOnBoarding.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 9,
                                  width: 9,
                                  margin: const EdgeInsets.symmetric(horizontal: 7),
                                  decoration: BoxDecoration(
                                    color: state.currentIndex == index ? Colors.white : colorOrangeFade,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                );
                              },
                            ),
                          )
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              minimumSize: Size(MediaQuery.of(context).size.width, 46),
                            ),
                            child: Text(
                              "Get started!",
                              style: typoVietNamProPoppins17.copyWith(color: colorTextRed),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const LoginView(),
                                ),
                              );
                            },
                          ),
                    const SizedBox(height: 16)
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
