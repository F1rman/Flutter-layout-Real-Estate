import 'package:buildings/widgets/slider_cart_for_item_page.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ItemPage extends StatelessWidget {
  ItemPage({super.key});
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
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SliderCardItemPage(
                              buttonCarouselController:
                                  buttonCarouselController),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        // const BottomNavigation(),
      ]),
    );
  }
}
