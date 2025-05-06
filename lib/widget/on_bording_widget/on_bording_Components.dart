import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/Strings_title.dart';
import 'package:nft_marketplace/core/resources/colors_value.dart';
import 'package:nft_marketplace/core/resources/font_Size_Screen.dart';
import 'package:nft_marketplace/core/resources/routes_screen.dart';
import 'package:nft_marketplace/core/resources/size_value.dart';

class OnBordingComponents extends StatelessWidget {
  const OnBordingComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PaddingValue.p24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: HeightValue.hv100),
          // Title
          Text(
            StringsTitle.titleOnBording,
            style: TextStyle(
              color: ColorsValue.kWhiteColor,
              fontSize: FontSizeScreen.fV36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),

          // Glass Container
          ClipRRect(
            borderRadius: BorderRadius.circular(BorderRadiusValue.bRd25),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: BlurValue.br15,
                sigmaY: BlurValue.br15,
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(PaddingValue.p24),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: OpacityValue.Op0_1),
                  borderRadius: BorderRadius.circular(BorderRadiusValue.bRd25),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: OpacityValue.Op0_2),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Title inside container
                    Text(
                      StringsTitle.titleOnBordingContainer,
                      style: TextStyle(
                        color: ColorsValue.kWhiteColor,
                        fontSize: FontSizeScreen.fV19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: HeightValue.hv12),
                    // Subtitle
                    Text(
                      StringsTitle.SuptitleOnBordingContainer,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorsValue.kgreyColor,
                        fontSize: FontSizeScreen.fV14,
                      ),
                    ),
                    const SizedBox(height: HeightValue.hv24),

                    // Button
                    Container(
                      height: HeightValue.hv50,
                      width: WidthValue.wV200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white.withValues(
                            alpha: OpacityValue.Op0_3,
                          ),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(
                          BorderRadiusValue.bRd30,
                        ),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff5856A9),
                            Color(0xff7562A3),
                            Color(0xff5E4571),
                            Color(0xff705E95),
                          ],
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          BorderRadiusValue.bRd30,
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: BlurValue.br20,
                            sigmaY: BlurValue.br20,
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                NameScreen.HomeScreen,
                              );
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => HomeScreen(),
                              //   ),
                              // );
                            },
                            child: Center(
                              child: Text(
                                StringsTitle.TextButton,
                                style: TextStyle(
                                  color: ColorsValue.kWhiteColor,
                                  fontSize: FontSizeScreen.fV14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
