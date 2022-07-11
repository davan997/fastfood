import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study_bloc/app/bloc/login_bloc.dart';
import 'package:study_bloc/app/event/login_event.dart';
import 'package:study_bloc/app/state/login_state.dart';
import 'package:study_bloc/app/theme/app_style.dart';
import 'package:study_bloc/app/theme/color.dart';
import 'package:study_bloc/generated/resource.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            final LoginBloc loginBloc = BlocProvider.of<LoginBloc>(context);
            return SingleChildScrollView(
              child: Container(
                color: const Color.fromARGB(255, 240, 240, 240),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 300,
                          color: Colors.white,
                        ),
                        Positioned(
                          bottom: 0,
                          child: Image.asset(R.ASSETS_PNG_IC_LOGO_PNG),
                        ),
                      ],
                    ),
                    DefaultTabController(
                      length: 2,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 45),
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: TabBar(
                              indicatorColor: colorIndicator,
                              indicatorWeight: 2.5,
                              tabs: [
                                Text("Login", style: typoVietNamProBold18),
                                Text("Sign-up", style: typoVietNamProBold18),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height - 350,
                            child: TabBarView(
                              children: [
                                state.showForgotPassword == false
                                    ? viewLogin(context, state, loginBloc)
                                    : viewForgotPassword(context, state, loginBloc),
                                viewRegister(context, state, loginBloc),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

Container viewLogin(BuildContext context, LoginState state, LoginBloc loginBloc) {
  return Container(
    padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 58,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            maxLength: 10,
            maxLines: 1,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 18),
              counterText: "",
              border: InputBorder.none,
              hintText: "Mobile Number",
              hintStyle: typoVietNamProNunito16w400.copyWith(color: colorTextFade60),
            ),
          ),
        ),
        Container(
          height: 58,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(vertical: 18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  maxLength: 10,
                  maxLines: 1,
                  obscureText: state.showPassword == false ? true : false,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 18),
                    counterText: "",
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: typoVietNamProNunito16w400.copyWith(color: colorTextFade60),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 18, left: 8),
                child: InkWell(
                  child: Icon(
                    state.showPassword == false ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                    color: colorTextFade60,
                    size: 24,
                  ),
                  onTap: () {
                    loginBloc.add(ShowPasswordEvent(!state.showPassword));
                    log("${state.showPassword}");
                  },
                ),
              ),
            ],
          ),
        ),
        InkWell(
          child: Text(
            "Forgot password?",
            style: typoVietNamProPoppins14.copyWith(color: colorOrangeButton),
          ),
          onTap: () {
            loginBloc.add(ShowForgotPasswordEvent(!state.showForgotPassword));
          },
        ),
        Container(
          margin: const EdgeInsets.only(top: 25, bottom: 15),
          child: ElevatedButton(
            onPressed: () {
              loginBloc.add(SubmitLoginEvent(context, state.phoneNumber, state.password));
            },
            style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: colorOrangeButton,
                minimumSize: Size(MediaQuery.of(context).size.width, 46),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
            child: Text(
              "Login",
              style: typoVietNamProPoppins17.copyWith(color: Colors.white),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Text("Or", style: typoVietNamProPoppins18),
        ),
        Container(
          margin: const EdgeInsets.only(top: 18, bottom: 18),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: colorBlueButton,
                minimumSize: Size(MediaQuery.of(context).size.width, 46),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
            child: Row(
              children: [
                const SizedBox(width: 7.5),
                SvgPicture.asset(R.ASSETS_SVG_IC_FACEBOOK_SVG),
                Expanded(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Log In with Facebook",
                    style: typoVietNamProPoppins20.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Colors.white,
            minimumSize: Size(MediaQuery.of(context).size.width, 46),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Row(
            children: [
              const SizedBox(width: 7.5),
              SvgPicture.asset(R.ASSETS_SVG_IC_GOOGLE_SVG),
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  "Log In with Google",
                  style: typoVietNamProPoppins20.copyWith(
                    color: const Color.fromARGB(145, 0, 0, 0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Container viewForgotPassword(BuildContext context, LoginState state, LoginBloc loginBloc) {
  return Container(
    padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.grey, size: 20),
          onTap: () {
            loginBloc.add(ShowForgotPasswordEvent(!state.showForgotPassword));
          },
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 12),
          width: 200,
          child: Text(
            "Forgot password?",
            style: typoVietNamProNunito36w700.copyWith(color: colorOrangeButton),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SvgPicture.asset(R.ASSETS_SVG_IC_EMAIL_SVG, height: 20),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your email address",
                    hintStyle: typoVietNamPro12.copyWith(
                      color: const Color(0xff676767),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 28, bottom: 34),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "* ",
                  style: typoVietNamPro12.copyWith(color: Colors.red),
                ),
                TextSpan(
                  text: "We will send you a message to set or reset your new password",
                  style: typoVietNamPro12.copyWith(
                    color: const Color(0xff676767),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          child: InkWell(
            child: Text(
              "Send code",
              style: typoVietNamProBold24.copyWith(
                color: const Color(0xffB2B2B2),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          width: MediaQuery.of(context).size.width,
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: colorOrangeButton,
              borderRadius: BorderRadius.circular(100),
            ),
            child: InkWell(
              onTap: () {},
              child: const Icon(Icons.arrow_forward_outlined, color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );
}

Container viewRegister(BuildContext context, LoginState state, LoginBloc loginBloc) {
  return Container(
    padding: const EdgeInsets.only(top: 20, right: 24, left: 24),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Register",
              style: typoVietNamProNunito36w700.copyWith(color: colorOrangeButton),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: const Size(45, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: SvgPicture.asset(R.ASSETS_SVG_IC_GOOGLE_SVG),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: const Size(45, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7.5),
                    child: SvgPicture.asset(R.ASSETS_SVG_IC_LOGOS_FACEBOOK_SVG),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 27, bottom: 20),
          padding: const EdgeInsets.symmetric(horizontal: 18),
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Full Name",
              hintStyle: typoVietNamProNunito16w400.copyWith(
                color: const Color.fromARGB(160, 160, 160, 160),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Mobile Number",
              hintStyle: typoVietNamProNunito16w400.copyWith(
                color: const Color.fromARGB(160, 160, 160, 160),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 27, bottom: 20),
          padding: const EdgeInsets.symmetric(horizontal: 18),
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Password",
              hintStyle: typoVietNamProNunito16w400.copyWith(
                color: const Color.fromARGB(160, 160, 160, 160),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Confirm Password",
              hintStyle: typoVietNamProNunito16w400.copyWith(
                color: const Color.fromARGB(160, 160, 160, 160),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(183, 48),
                primary: colorOrangeButton,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Sign-up",
                style: typoVietNamProPoppins17.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(width: 25),
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Already a Member? ",
                      style: typoVietNamProNunito16w400.copyWith(
                        color: const Color(0xffB3B3B3),
                      ),
                    ),
                    TextSpan(
                      text: "Login",
                      style: typoVietNamProBold16.copyWith(
                        color: const Color(0xffB3B3B3),
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
