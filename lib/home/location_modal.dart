import 'package:flutter/material.dart';
import '../styles/style.dart';
import '../widgets/bottom_navigation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/slider_card.dart';
import '../widgets/tile_card_slider.dart';
import 'home_search_filter.dart';

class LocationModal extends StatelessWidget {
  LocationModal({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF070817),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 8, top: 22),
            width: 33,
            height: 33,
            child: Material(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xFF2C2C2E),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                }, // button pressed
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/img/xmark.png',
                      width: 10,
                    ), // icon
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 22),
                    child: Text(
                      'Локація',
                      style: modalHeader,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
