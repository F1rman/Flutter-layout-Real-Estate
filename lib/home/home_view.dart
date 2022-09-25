import 'package:buildings/item_page/item_page.dart';
import 'package:buildings/saved/saved_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Contact/contact_view.dart';
import '../controllers/navigation_controller.dart';
import '../styles/style.dart';
import '../widgets/bottom_navigation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/slider_card.dart';
import '../widgets/tile_card_slider.dart';
import 'home.dart';
import 'home_search_filter.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final Controller c = Get.put(Controller());
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
                Obx(
                  () => IndexedStack(
                    index: c.index.value,
                    children: [
                      Home(),
                      SavedView(),
                      ContactView(),
                    ],
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
