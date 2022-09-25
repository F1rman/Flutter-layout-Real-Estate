// ignore_for_file: unused_local_variable

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

import '../styles/style.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/slider_card.dart';
import 'filter_search.dart';

// ignore: must_be_immutable
class HomeFilterResults extends StatelessWidget {
  HomeFilterResults({super.key});
  final CarouselController buttonCarouselController = CarouselController();
  var items = [1, 2, 3, 4, 5, 6];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF070817),
      body: Stack(children: [
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 100),
              child: Column(
                children: [
                  const SearchFilter(),
                  for (var item in items)
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          SliderCard(),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 12),
                                    child: MaterialButton(
                                      color: const Color(0xFFFF9176),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      onPressed: () => {},
                                      child: const SizedBox(
                                          width: 100,
                                          height: 44,
                                          child: Center(
                                              child: Text(
                                            'Зателефонувати',
                                            style: textButton,
                                          ))),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: MaterialButton(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    onPressed: () => {},
                                    child: const SizedBox(
                                        width: 100,
                                        height: 44,
                                        child: Center(
                                            child: Text(
                                          'Написати',
                                          style: textButton,
                                        ))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        const BottomNavigation(),
      ]),
    );
  }
}
