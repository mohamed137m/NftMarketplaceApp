import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/colors_value.dart';
import 'package:nft_marketplace/core/resources/font_Size_Screen.dart';
import 'package:nft_marketplace/core/resources/size_value.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({super.key, required this.titleCard});
  final String titleCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: BorderRadiusValue.bRd58,
        left: BorderRadiusValue.bRd16,
      ),
      child: Text(
        titleCard,
        style: TextStyle(
          color: ColorsValue.kWhiteColor,
          fontSize: FontSizeScreen.fV20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
