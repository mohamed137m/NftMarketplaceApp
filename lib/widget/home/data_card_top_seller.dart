import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/colors_value.dart';
import 'package:nft_marketplace/core/resources/font_Size_Screen.dart';
import 'package:nft_marketplace/core/resources/model_Card.dart';

class DataCardTopSeller extends StatelessWidget {
  const DataCardTopSeller({super.key, required this.Card});
  final ModelTopSeller Card;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Card.TitleText,
            style: TextStyle(
              color: ColorsValue.kWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: FontSizeScreen.fV14,
            ),
          ),
          Text(
            Card.SubTitleText,
            style: TextStyle(
              color: ColorsValue.greyColor,
              fontSize: FontSizeScreen.fV14,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(CryptoFontIcons.ETH, color: Colors.white.withAlpha(100)),
                  Text(
                    Card.NumberData,
                    style: TextStyle(
                      color: ColorsValue.kWhiteColor,
                      fontSize: FontSizeScreen.fV14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '♡',
                    style: TextStyle(
                      color: ColorsValue.greyColor,
                      fontSize: FontSizeScreen.fV16px,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    Card.LikeData,
                    style: TextStyle(
                      color: ColorsValue.greyColor,
                      fontSize: FontSizeScreen.fV14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleText {}
