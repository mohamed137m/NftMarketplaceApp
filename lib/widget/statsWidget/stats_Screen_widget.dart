import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/colors_value.dart';
import 'package:nft_marketplace/widget/statsWidget/all_categories_card.dart';

class StatsScreenWidget extends StatelessWidget {
  const StatsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Container(
          padding: EdgeInsets.only(top: 16.22, bottom: 16.22),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xff97A9F6).withValues(alpha: 0.5),
                width: 1,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18.02, left: 18.02),
                child: Row(
                  children: [
                    Icon(Icons.stacked_bar_chart, color: Colors.grey),
                    Text(
                      'Ranking',
                      style: TextStyle(
                        color: ColorsValue.kWhiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.02, left: 18.02),
                child: Row(
                  children: [
                    Icon(
                      Icons.stacked_line_chart,
                      color: const Color.fromARGB(255, 121, 121, 121),
                    ),
                    Text(
                      'Activity',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 121, 121, 121),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(66.67),
            topRight: Radius.circular(66.67),
          ),
          child: Divider(
            height: 4.603703737258911,
            color: Color(0xff97A9F6),
            thickness: 6.5,
            endIndent: 200,
            indent: 75,
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 4, top: 35, right: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AllCategoriesCard(IconCategories: Icons.grid_view),
              AllCategoriesCard(IconCategories: Icons.attach_file),
            ],
          ),
        ),
          ],
        );
  }
}