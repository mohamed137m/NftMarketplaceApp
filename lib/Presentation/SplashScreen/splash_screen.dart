import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/Strings_title.dart';
import 'package:nft_marketplace/core/resources/colors_value.dart';
import 'package:nft_marketplace/core/resources/font_Size_Screen.dart';
import 'package:nft_marketplace/core/resources/routes_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future future = Future.delayed(Duration(seconds: 4), () {
      return Navigator.pushReplacementNamed(context, NameScreen.OnBoardingScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsValue.kPrimaryColor,
      body: Align(
        alignment: Alignment.center,
        child: Text(
          style: TextStyle(
            color: ColorsValue.kWhiteColor,
            fontSize: FontSizeScreen.fV36,
            fontWeight: FontWeight.bold,
          ),
          StringsTitle.TitleHomePage,
        ),
      ),
    );
  }
}
