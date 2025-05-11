import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/colors_value.dart';

class WidgetBottomNavigationBar extends StatelessWidget {
  const WidgetBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
        double WidthScreen = MediaQuery.of(context).size.width;
    return SizedBox(
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
      )
      ;
  }
}

