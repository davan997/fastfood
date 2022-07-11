import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study_bloc/app/bloc/cart_bloc.dart';
import 'package:study_bloc/app/event/cart_event.dart';
import 'package:study_bloc/app/state/cart_state.dart';
import 'package:study_bloc/app/theme/app_style.dart';
import 'package:study_bloc/app/theme/color.dart';
import 'package:study_bloc/app/utils/loop_widget.dart';
import 'package:study_bloc/generated/resource.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<CartBloc>(context);
    final carouselController = CarouselController();
    final banners = [
      ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          padding: const EdgeInsets.only(left: 14, top: 9, bottom: 9),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff51B698),
                Color(0xff6AF0E0),
              ],
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Preferences",
                      style: typoVietNamProPoppins22.copyWith(color: Colors.white),
                    ),
                    Text(
                      "For multiple users",
                      style: typoVietNamProPoppins13.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      "You can now order from multiple restaurants at the same time!",
                      style: typoVietNamProRoboto14w400.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    R.ASSETS_PNG_IC_SET_THEME_NOW_PNG,
                    fit: BoxFit.scaleDown,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(R.ASSETS_SVG_IC_ATTENTION_SVG),
                      Text(
                        "SET THEM NOW",
                        style: typoVietNamProMetropolis15.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          padding: const EdgeInsets.only(left: 14, top: 9, bottom: 9),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffFB6A70),
                Color(0xffFCA384),
              ],
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rescued Food",
                      style: typoVietNamProPoppins22.copyWith(color: Colors.white),
                    ),
                    Text(
                      "Saving food and hunger.",
                      style: typoVietNamProPoppins13.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      "Left over food and supplies are gathered and sold for 50% off!",
                      style: typoVietNamProRoboto14w400.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    R.ASSETS_PNG_IC_SET_THEME_NOW_PNG,
                    fit: BoxFit.scaleDown,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(R.ASSETS_SVG_IC_ATTENTION_SVG),
                      Text(
                        "SET THEM NOW",
                        style: typoVietNamProMetropolis15.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          padding: const EdgeInsets.only(left: 14, top: 9, bottom: 9),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff51B698),
                Color(0xff6AF0E0),
              ],
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Preferences",
                      style: typoVietNamProPoppins22.copyWith(color: Colors.white),
                    ),
                    Text(
                      "For multiple users",
                      style: typoVietNamProPoppins13.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      "You can now order from multiple restaurants at the same time!",
                      style: typoVietNamProRoboto14w400.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    R.ASSETS_PNG_IC_SET_THEME_NOW_PNG,
                    fit: BoxFit.scaleDown,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(R.ASSETS_SVG_IC_ATTENTION_SVG),
                      Text(
                        "SET THEM NOW",
                        style: typoVietNamProMetropolis15.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          padding: const EdgeInsets.only(left: 14, top: 9, bottom: 9),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffFB6A70),
                Color(0xffFCA384),
              ],
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rescued Food",
                      style: typoVietNamProPoppins22.copyWith(color: Colors.white),
                    ),
                    Text(
                      "Saving food and hunger.",
                      style: typoVietNamProPoppins13.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      "Left over food and supplies are gathered and sold for 50% off!",
                      style: typoVietNamProRoboto14w400.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    R.ASSETS_PNG_IC_SET_THEME_NOW_PNG,
                    fit: BoxFit.scaleDown,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(R.ASSETS_SVG_IC_ATTENTION_SVG),
                      Text(
                        "SET THEM NOW",
                        style: typoVietNamProMetropolis15.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ];
    final users = [
      {"name": "User 1"},
      {"name": "User 2"},
      {"name": "User 3"},
      {"name": "User 4"},
    ];
    final categories1 = [
      {"image": R.ASSETS_PNG_IC_HOT_DEAL_PNG, "title": "Hot Deals"},
      {"image": R.ASSETS_PNG_IC_NEW_ON_FASTFOOD_PNG, "title": "New on FastFood"},
      {"image": R.ASSETS_PNG_IC_SAVE_FOOD_PNG, "title": "Save Food, Save Hunger"},
      {"image": R.ASSETS_PNG_IC_PREFERENCES_PNG, "title": "Set Your Preferences Now!"},
    ];
    final items = [
      {
        "image":
            "https://product.hstatic.net/1000075078/product/americano-nong-app_652009_400x400_c4cc077adacd4340bb41a6e1e4710a95_large.jpg",
        "name": "Wow! Momo",
        "restaurant": "Suhani Restaurant",
        "price": "200"
      },
      {
        "image": "https://simply-delicious-food.com/wp-content/uploads/2019/11/Breakfast-grilled-cheese-4.jpg",
        "name": "Egg and cheese sandwich",
        "restaurant": "Mehfil’s Place",
        "price": "200"
      },
      {
        "image":
            "https://img.tastykitchen.vn/resize/764x-/2021/05/31/thuong-thuc-mon-salad-ca-chua-voi-cong-thuc-che-bi-171d.jpg",
        "name": "Wow! Momo",
        "restaurant": "Fast food, Chinese",
        "price": "125"
      },
      {
        "image": "https://b.zmtcdn.com/data/pictures/chains/6/19424196/09b3327909ac875271b47e78bdd14b53.jpg",
        "name": "Istah - Shawarma",
        "restaurant": "Arabian, Lebanese",
        "price": "125"
      },
    ];
    final categories2 = [
      {"title": "Daily Meals"},
      {"title": "Middle-Eastern"},
      {"title": "Chinese"},
      {"title": "Desi"},
    ];
    final restaurants = [
      {
        "image": "https://upload.wikimedia.org/wikipedia/vi/thumb/7/7e/Logo_KFC.svg/1200px-Logo_KFC.svg.png",
        "name": "KFC Combo"
      },
      {"image": "https://cdn-icons-png.flaticon.com/512/5968/5968513.png", "name": "Burger King"},
    ];
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
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
                              "${state.address}, ${state.ward}, ${state.district}, ${state.province}",
                              style: typoVietNamProBold16.copyWith(color: colorText60),
                            )
                          ],
                        ),
                      ),
                      Image.asset(R.ASSETS_PNG_IC_HEART_PNG)
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16, bottom: 21),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 26, top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xffF3F3F3),
                              borderRadius: BorderRadius.circular(13.4),
                            ),
                            child: InkWell(
                              onTap: () {
                                loginBloc.add(GoToSearchEvent(context));
                              },
                              child: Row(
                                children: [
                                  SvgPicture.asset(R.ASSETS_SVG_IC_SEARCH_SVG),
                                  const SizedBox(width: 13.6),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(text: "Search food ", style: typoVietNamProBold17),
                                        TextSpan(
                                          text: "nearby",
                                          style: typoVietNamProBold17.copyWith(color: colorText60),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 18),
                        InkWell(
                          onTap: () async {
                            await showFillItem(context, state);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12.6, horizontal: 13.3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: SvgPicture.asset(R.ASSETS_SVG_IC_FILL_SVG),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CarouselSlider.builder(
                    carouselController: carouselController,
                    options: CarouselOptions(
                      viewportFraction: 1,
                      height: 130,
                      onPageChanged: (d, p) {
                        loginBloc.add(CurrentBannerThemeEvent(d));
                      },
                    ),
                    itemCount: banners.length,
                    itemBuilder: (context, index, realIndex) {
                      return banners[index];
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 14, bottom: 24),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 8,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: banners.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: state.currentIndex == index ? const Color(0xff6AF0E0) : const Color(0xff51B698),
                            shape: BoxShape.circle,
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Preferences",
                        style: typoVietNamProMetropolis28.copyWith(color: const Color(0xff4FA987)),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              "Edit",
                              style: typoVietNamProPoppins18.copyWith(color: const Color(0xffA4A4A4)),
                            ),
                            const SizedBox(width: 4.5),
                            SvgPicture.asset(R.ASSETS_SVG_IC_COOLICON_SVG)
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 17.39, bottom: 24),
                    child: Text(
                      "Now order user specific food directly below!",
                      style: typoVietNamProMetropolis18.copyWith(color: const Color(0xff9B9B9B)),
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: index + 1 != users.length ? 19 : 0),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 27),
                        decoration: BoxDecoration(
                          color: const Color(0xffF3F3F3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(users[index]["name"]!, style: typoVietNamProPoppins18),
                              const Icon(Icons.arrow_forward_ios_outlined, color: Colors.black)
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 36, bottom: 25),
                    child: const Divider(color: Color(0xffAFAFAF), thickness: 1),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: categories1.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: index + 1 != categories1.length ? 19 : 0),
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(categories1[index]["image"]!, height: 46),
                              const SizedBox(height: 5),
                              Text(
                                categories1[index]["title"]!,
                                style: typoVietNamProRoboto13.copyWith(color: const Color(0xff707070)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    height: 370,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width - 50,
                          decoration: const BoxDecoration(
                            color: Color(0xffFDF9EA),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(13.3056),
                              topRight: Radius.circular(23),
                              bottomLeft: Radius.circular(13.3056),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 32,
                          top: 15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Looking for ",
                                      style: typoVietNamProMetropolis20w400.copyWith(color: const Color(0xffF88922)),
                                    ),
                                    TextSpan(
                                      text: "Breakfast?",
                                      style: typoVietNamProMetropolis20w700.copyWith(color: const Color(0xffF88922)),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Here’s what you might like to taste",
                                style: typoVietNamProRoboto14w400.copyWith(color: const Color(0xffA6978A)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 50),
                          height: 254,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(right: index + 1 != items.length ? 9 : 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(13.3056),
                                  child: Container(
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.network(
                                          items[index]["image"]!,
                                          fit: BoxFit.fill,
                                          height: 136,
                                          width: 191,
                                        ),
                                        Container(
                                          height: 118,
                                          width: 191,
                                          padding: const EdgeInsets.only(top: 17, left: 12, right: 12, bottom: 12),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(items[index]["name"]!, style: typoVietNamProMetropolis17),
                                              Text(items[index]["restaurant"]!, style: typoVietNamProRoboto14w300),
                                              const Spacer(),
                                              Text(
                                                "₹${items[index]["price"]}",
                                                style: typoVietNamProMetropolis18.copyWith(
                                                  color: const Color(0xffF88922),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 118,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: categories2.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: index + 1 != categories2.length ? 19 : 0),
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(R.ASSETS_PNG_IC_DAILY_MEALS_PNG, height: 75.5),
                              const SizedBox(height: 12),
                              Text(
                                categories2[index]["title"]!,
                                style: typoVietNamProRoboto13.copyWith(color: const Color(0xff707070)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 36, bottom: 28),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Save Rescued Food for 50%!",
                                style: typoVietNamProMetropolis20w700.copyWith(color: const Color(0xff4FA987)),
                              ),
                              Text(
                                "Left over supplies and food have been used up.",
                                style: typoVietNamProRoboto16.copyWith(color: const Color(0xff999999)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 11),
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xffC8C8C8)),
                              borderRadius: BorderRadius.circular(13.3)),
                          child: Row(
                            children: [
                              Text(
                                "All",
                                style: typoVietNamProMetropolis13.copyWith(color: const Color(0xff707070)),
                              ),
                              const SizedBox(width: 2),
                              SvgPicture.asset(R.ASSETS_SVG_IC_ATTENTION_SVG, color: const Color(0xffC4C4C4)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 258,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: index + 1 != items.length ? 9 : 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                border: Border.all(color: const Color(0xffC4C4C4), width: 2),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.network(
                                    items[index]["image"]!,
                                    fit: BoxFit.fill,
                                    height: 136,
                                    width: 191,
                                  ),
                                  Container(
                                    height: 118,
                                    width: 191,
                                    padding: const EdgeInsets.only(top: 17, left: 12, right: 12, bottom: 12),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(items[index]["name"]!, style: typoVietNamProMetropolis17),
                                        Text(items[index]["restaurant"]!, style: typoVietNamProRoboto14w300),
                                        const Spacer(),
                                        Text(
                                          "₹${items[index]["price"]}",
                                          style: typoVietNamProMetropolis18.copyWith(
                                            color: const Color(0xffF88922),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 44, bottom: 28),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Order Again",
                                style: typoVietNamProMetropolis20w700.copyWith(color: const Color(0xff333333)),
                              ),
                              Text(
                                "You Ordered from 17 Restaurants",
                                style: typoVietNamProRoboto16.copyWith(color: const Color(0xff999999)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 11),
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xffC8C8C8)),
                              borderRadius: BorderRadius.circular(13.3)),
                          child: Row(
                            children: [
                              Text(
                                "All",
                                style: typoVietNamProMetropolis13.copyWith(color: const Color(0xff707070)),
                              ),
                              const SizedBox(width: 2),
                              SvgPicture.asset(R.ASSETS_SVG_IC_ATTENTION_SVG, color: const Color(0xffC4C4C4)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 138,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: restaurants.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 294,
                          margin: EdgeInsets.only(right: index + 1 != restaurants.length ? 22.6 : 0),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                          decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xffC4C4C4)),
                              borderRadius: BorderRadius.circular(13.3)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(restaurants[index]["image"]!, height: 53),
                              ),
                              const SizedBox(width: 9),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          restaurants[index]["name"]!,
                                          style: typoVietNamProMetropolis17.copyWith(color: const Color(0xff333333)),
                                        ),
                                        const SizedBox(width: 35),
                                        Text(
                                          "₹250",
                                          style: typoVietNamProBold17.copyWith(color: const Color(0xff079D49)),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "Yesterday 3pm",
                                      style: typoVietNamProRoboto13.copyWith(color: const Color(0xff999999)),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "1 Kacchi biriyani · 1 chilli onion... +3more",
                                      style: typoVietNamProRoboto16.copyWith(color: const Color(0xff707070)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 44, bottom: 28),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Order Again",
                                style: typoVietNamProMetropolis20w700.copyWith(color: const Color(0xff333333)),
                              ),
                              Text(
                                "You Ordered from 17 Restaurants",
                                style: typoVietNamProRoboto16.copyWith(color: const Color(0xff999999)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 11),
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xffC8C8C8)),
                              borderRadius: BorderRadius.circular(13.3)),
                          child: Row(
                            children: [
                              Text(
                                "All",
                                style: typoVietNamProMetropolis13.copyWith(color: const Color(0xff707070)),
                              ),
                              const SizedBox(width: 2),
                              SvgPicture.asset(R.ASSETS_SVG_IC_ATTENTION_SVG, color: const Color(0xffC4C4C4)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Future showFillItem(BuildContext context, CartState state) async {
  return await showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Container(
        height: 350,
        padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: const [],
        ),
      );
    },
  );
}
