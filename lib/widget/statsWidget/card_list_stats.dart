import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/model_Card.dart';

class CardListStats extends StatelessWidget {
  const CardListStats({super.key, required this.State});
  final ModelStats State;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '${State.Order}',
                style: TextStyle(color: Color(0xffEBEBF599), fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 9),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                    State.imgeCard,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    State.Title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    State.subTitle,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(CryptoFontIcons.ETH, color: Colors.white.withAlpha(100)),
                  Text(
                    State.Salary,
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  State.prs,
                  style: TextStyle(
                    color: State.Active ? Colors.green : Colors.red,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
