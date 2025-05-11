import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/Strings_title.dart';
import 'package:nft_marketplace/core/resources/colors_value.dart';
import 'package:nft_marketplace/core/resources/font_Size_Screen.dart';
import 'package:nft_marketplace/widget/home/bottom_navigation_bar.dart';
import 'package:nft_marketplace/widget/home/custom_home_Screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Text(
            StringsTitle.TitleHomePage,
            style: TextStyle(
              color: ColorsValue.kWhiteColor,
              fontSize: FontSizeScreen.fV25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      bottomNavigationBar: WidgetBottomNavigationBar(),
      
      backgroundColor: ColorsValue.kPrimaryColor,

      body: CustomHomeScreen()
    );
  }
}
