import 'package:flutter/material.dart';
import 'package:nft_marketplace/Presentation/SplashScreen/splash_screen.dart';
import 'package:nft_marketplace/Presentation/home/home_screen.dart';
import 'package:nft_marketplace/Presentation/onBoarding/screen/on_border_screen.dart';

class RoutesScreen {
  static Map<String, Widget Function(BuildContext)> routes = {
    NameScreen.OnBoardingScreen: (context) => OnBorderScreen(),
    NameScreen.HomeScreen: (context) => HomeScreen(),
    NameScreen.SplashScreen: (context) => SplashScreen(),
  };
}

class NameScreen {
  static String OnBoardingScreen = 'kOnBorderScreen';
  static String HomeScreen = 'kHomeScreen';
  static String SplashScreen = 'kSplashScreen';
}
