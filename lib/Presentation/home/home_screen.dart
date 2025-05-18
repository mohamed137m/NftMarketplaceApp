import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/Presentation/Stats/stats_screen.dart';
import 'package:nft_marketplace/core/resources/Strings_title.dart';
import 'package:nft_marketplace/core/resources/colors_value.dart';
import 'package:nft_marketplace/core/resources/font_Size_Screen.dart';
import 'package:nft_marketplace/widget/home/bottom_navigation_bar.dart';
import 'package:nft_marketplace/widget/home/custom_home_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> w = [CustomHomeScreen(), StatsScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar:
          index == 0
              ? AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                automaticallyImplyLeading: false,
                title: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(
                    StringsTitle.TitleHomePage,
                    style: TextStyle(
                      color: ColorsValue.kWhiteColor,
                      fontSize: FontSizeScreen.fV25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
              : AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                automaticallyImplyLeading: false,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        textAlign: TextAlign.center,
                        StringsTitle.TitleStats,
                        style: TextStyle(
                          color: ColorsValue.kWhiteColor,
                          fontSize: FontSizeScreen.fV25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        color: ColorsValue.kWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onPressedStats: () {
          setState(() {
            index = 1;
          });
        },
        onPressedHome: () {
          setState(() {
            index = 0;
          });
        },
      ),
      backgroundColor: ColorsValue.kPrimaryColor,
      body: w[index],
    );
  }
}
