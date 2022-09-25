import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

import '../item_page/item_page.dart';
import '../styles/style.dart';
import '../widgets/slider_card.dart';
import '../widgets/tile_card_slider.dart';
import 'home_search_filter.dart';

class Home extends StatelessWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 100),
      child: Container(
        child: Column(
          children: [
            HomeFilterSearch(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Рекомендовані',
                      style: categotyHeadline,
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: Text(
                        'Більше',
                        style: greyText,
                      ),
                    )
                  ],
                ),
                SliderCard(
                  click: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ItemPage(),
                      ),
                    )
                  },
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Поряд з Вами',
                        style: categotyHeadline,
                      ),
                      TextButton(
                        onPressed: () => {},
                        child: Text(
                          'Більше',
                          style: greyText,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TileCardSlider(),
                      TileCardSlider(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
