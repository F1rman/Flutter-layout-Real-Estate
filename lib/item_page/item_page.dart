import 'package:buildings/item_page/rent_option.dart';
import 'package:buildings/widgets/slider_cart_for_item_page.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';

import '../widgets/my_divider.dart';
import 'about.dart';
import 'about_company.dart';
import 'contacts.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SliderCardItemPage(),
                          RentOption(),
                          MyDivider(
                            top: 20,
                            bottom: 20,
                          ),
                          About(),
                          MyDivider(),
                          AboutCompany(),
                          Contacts(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        const BottomNavigation(),
      ]),
    );
  }
}
