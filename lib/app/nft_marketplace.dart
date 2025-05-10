import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/routes_screen.dart';

class NftMarketplace extends StatelessWidget {
  const NftMarketplace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RoutesScreen.routes,
      initialRoute: NameScreen.OnBoardingScreen,
    );
  }
}
