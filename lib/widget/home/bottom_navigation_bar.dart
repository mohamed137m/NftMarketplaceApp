import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/colors_value.dart';
import 'package:nft_marketplace/core/resources/size_value.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.onPressedStats, required this.onPressedHome});
final VoidCallback onPressedStats;
final VoidCallback onPressedHome;
  @override
  Widget build(BuildContext context) {
    double WidthScreen = MediaQuery.of(context).size.width;
    return SizedBox(
      height: HeightValue.hv122,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(BorderRadiusValue.bRd45),
                topRight: Radius.circular(BorderRadiusValue.bRd45),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: BlurValue.br72,
                  sigmaY: BlurValue.br72,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: WidthScreen,
                    height: HeightValue.hv90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.1),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(BorderRadiusValue.bRd45),
                        topRight: Radius.circular(BorderRadiusValue.bRd45),
                      ),
                      color: Colors.white.withValues(alpha: 0.1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: onPressedHome,
                          icon: Icon(
                            Icons.home,
                            color: ColorsValue.kWhiteColor,
                            size: 40,
                          ),
                        ),
                        IconButton(
                          onPressed: onPressedStats,
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
    );
  }
}
