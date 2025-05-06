import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/colors_value.dart';
import 'package:nft_marketplace/core/resources/font_Size_Screen.dart';
import 'package:nft_marketplace/core/resources/model_Card.dart';
import 'package:nft_marketplace/core/resources/size_value.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({super.key, required this.ModelsHome});

  final ModelCard ModelsHome;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(BorderRadiusValue.bRd27),
        image: DecorationImage(
          image: AssetImage(ModelsHome.ImageTitle),
          fit: BoxFit.cover,
        ),
      ),
      width: 252.25,
      height: 167.5722198486328,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        ModelsHome.TitleText,
        style: TextStyle(
          color: ColorsValue.kWhiteColor,
          fontSize: FontSizeScreen.fV19,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              offset: Offset(6, 4),
              blurRadius: 9.0,
              color: Colors.black.withValues(alpha: OpacityValue.Op0_9),
            ),
          ],
        ),
      ),
    );
  }
}
