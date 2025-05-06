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
    return Scaffold(
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
        ],
      ),
    );
  }
}
