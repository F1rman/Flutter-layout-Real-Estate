import 'package:buildings/item_page/rent_option.dart';
import 'package:buildings/styles/style.dart';
import 'package:buildings/widgets/slider_cart_for_item_page.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/my_divider.dart';

class SavedView extends StatelessWidget {
  SavedView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Збережені',
          style: h1,
        )
      ],
    );
  }
}
