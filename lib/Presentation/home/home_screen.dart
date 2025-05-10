import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/Strings_title.dart';
import 'package:nft_marketplace/core/resources/colors_value.dart';
import 'package:nft_marketplace/core/resources/font_Size_Screen.dart';
import 'package:nft_marketplace/core/resources/home_dummy_data.dart';
import 'package:nft_marketplace/widget/home/card_title.dart';
import 'package:nft_marketplace/widget/home/card_top_seller.dart';
import 'package:nft_marketplace/widget/home/card_trending_collections.dart';
import 'package:nft_marketplace/widget/home/title_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double WidthScreen = MediaQuery.of(context).size.width;
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

      bottomNavigationBar: SizedBox(
        height: 122.52592468261719,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45.05),
                  topRight: Radius.circular(45.05),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 72.07, sigmaY: 72.07),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: WidthScreen,
                      height: 90.09259033203125,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.05),
                          topRight: Radius.circular(45.05),
                        ),
                        color: Colors.white.withValues(alpha: 0.1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.home,
                              color: ColorsValue.kWhiteColor,
                              size: 40,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.stacked_bar_chart_rounded,
                              color: ColorsValue.kWhiteColor,
                              size: 40,
                            ),
                          ),
                          SizedBox(width: 70.27222442626953),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search_rounded,
                              color: ColorsValue.kWhiteColor,
                              size: 40,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person,
                              color: ColorsValue.kWhiteColor,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: 70.27222442626953,
                  height: 70.27222442626953,
                  decoration: ShapeDecoration(
                    shape: StarBorder.polygon(sides: 6, pointRounding: .3),
                    color: ColorsValue.kWhiteColor.withValues(alpha: 0.6),
                  ),
                  child: Text(
                    '+',
                    style: TextStyle(
                      color: ColorsValue.kWhiteColor,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: ColorsValue.kPrimaryColor,

      body: ListView(
        children: [
          const SizedBox(height: 30),
          SizedBox(
            height: 167.5722,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ModelsHome.length,
              itemBuilder: (context, index) {
                return CardTitle(ModelsHome: ModelsHome[index]);
              },
            ),
          ),
          const SizedBox(height: 20),
          TitleCard(titleCard: StringsTitle.subTitleHomePage),

          const SizedBox(height: 25),
          SizedBox(
            height: 216,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardTrendingCollections.length,
              itemBuilder: (context, index) {
                return CardTrendingCollections(
                  Card: cardTrendingCollections[index], //0 , 1 ,2
                );
              },
            ),
          ),
          TitleCard(titleCard: StringsTitle.subTitleTopSellerHomePage),
          const SizedBox(height: 25),
          SizedBox(
            height: 262,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: TopSeller.length,
              itemBuilder: (context, index) {
                return CardTopSeller(
                  Card: TopSeller[index], //0 , 1 ,2
                );
              },
            ),
          ),
          SizedBox(height: 9),
        ],
      ),
    );
  }
}
