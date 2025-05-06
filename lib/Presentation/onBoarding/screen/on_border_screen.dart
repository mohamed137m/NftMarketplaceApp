import 'package:flutter/material.dart';
import 'package:nft_marketplace/widget/on_bording_widget/on_bording_Components.dart';

import '../../../widget/on_bording_widget/Image_on_bording.dart';

class OnBorderScreen extends StatelessWidget {
  const OnBorderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          ImageOnBording(),
          // Foreground Content
          OnBordingComponents(),
        ],
      ),
    );
  }
}
