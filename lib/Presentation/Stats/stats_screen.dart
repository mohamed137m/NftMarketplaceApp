import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/home_dummy_data.dart';
import 'package:nft_marketplace/widget/statsWidget/card_list_stats.dart';
import 'package:nft_marketplace/widget/statsWidget/stats_Screen_widget.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StatsScreenWidget(),
        SizedBox(height: 20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              itemBuilder: (context, index) => CardListStats(State: StateCard[index],),
              separatorBuilder: (context, index) => SizedBox(height: 20),
              itemCount: StateCard.length,
            ),
          ),
        ),
      ],
    );
  }
}
