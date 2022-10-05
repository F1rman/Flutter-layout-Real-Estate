import 'package:flutter/material.dart';

import '../item_page/item_page.dart';
import '../styles/style.dart';
import '../widgets/slider_card.dart';
import '../widgets/slider_card_static.dart';
import '../widgets/tile_card_slider.dart';
import 'home_search_filter.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 100),
              child: Column(
                children: [
                  const HomeFilterSearch(),
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
                      SliderCardStatic(
                        click: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ItemPage(),
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
                            Container(
                                margin: const EdgeInsets.only(bottom: 12),
                                child: const TileCardSlider()),
                            Container(
                              margin: const EdgeInsets.only(bottom: 12),
                              child: const TileCardSlider(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
