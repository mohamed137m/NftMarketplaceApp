import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/colors_value.dart';

class AllCategoriesCard extends StatelessWidget {
  const AllCategoriesCard({super.key, required this.IconCategories});
  final IconData IconCategories;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(27.03),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(
            top: 10.81,
            right: 15.32,
            left: 14.41,
            bottom: 9.91,
          ),
          height: 60.72129821777344,
          width: 190,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.1),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white.withValues(alpha: 0.1),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(IconCategories, color: Colors.grey),
              SizedBox(width: 2),
              Text(
                'All categories',
                style: TextStyle(
                  color: ColorsValue.kWhiteColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 1),
              Icon(Icons.arrow_downward, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
