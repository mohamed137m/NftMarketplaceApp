import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/image_value.dart';

class ImageOnBording extends StatelessWidget {
  const ImageOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
            ImageValue.ImageBackground,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          );
  }
}