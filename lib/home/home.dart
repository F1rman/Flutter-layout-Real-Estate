import 'package:buildings/item_page/item_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../redux/redux_service.dart';
import '../styles/style.dart';
import '../widgets/bottom_navigation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/slider_card.dart';
import '../widgets/tile_card_slider.dart';
import 'home_search_filter.dart';
import 'package:redux/redux.dart';

class Home extends StatelessWidget {
  Home({super.key});
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF070817),
      body: Stack(children: [
        ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 100),
                  child: StoreConnector<int, String>(
                    converter: (store) => store.state.toString(),
                    builder: (context, count) {
                      return Column(
                        children: [
                          HomeFilterSearch(),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  buttonCarouselController:
                                      buttonCarouselController),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    TileCardSlider(
                                        buttonCarouselController:
                                            buttonCarouselController),
                                    TileCardSlider(
                                        buttonCarouselController:
                                            buttonCarouselController),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
        BottomNavigation(),
      ]),
    );
  }
}
