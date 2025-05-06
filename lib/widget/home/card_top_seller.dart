import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/model_Card.dart';
import 'package:nft_marketplace/widget/home/data_card_top_seller.dart';

class CardTopSeller extends StatelessWidget {
  const CardTopSeller({super.key, required this.Card});
  final ModelTopSeller Card;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 9, left: 9),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          child: Container(
            width: 180,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.1),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(30),
              color: Colors.white.withValues(alpha: 0.1),
            ),

            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Container(
                      width: 160,
                      height: 155,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.3),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(Card.ImageTitle),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  DataCardTopSeller(Card: Card),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
