import 'package:buildings/widgets/slider_card_small.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../styles/style.dart';

class TileCardSlider extends StatelessWidget {
  const TileCardSlider({
    Key? key,
    required this.buttonCarouselController,
  }) : super(key: key);

  final CarouselController buttonCarouselController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      height: 102,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF090A1B),
        border: Border.all(
          color: const Color(0xFF222230),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 132,
            child: SliderCardSmall(
                buttonCarouselController: buttonCarouselController),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ЖК Фортуна',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay',
                            color: Colors.white,
                            letterSpacing: -.41,
                            fontSize: 15,
                            height: 1.4,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '700\$',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay',
                            color: Colors.white,
                            letterSpacing: -.41,
                            fontSize: 15,
                            height: 1.4,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/location.png',
                        width: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 6, right: 14),
                        child: Text(
                          'Київ, вул Фрометівська 12/4',
                          style: greyText,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: 10,
                          top: 12,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/img/roms.png',
                              width: 15,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 7),
                              child: Text(
                                '3км',
                                style: TextStyle(
                                  fontFamily: 'SFProDisplay',
                                  color: Colors.white,
                                  letterSpacing: 0.07,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 12,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/img/area.png',
                              width: 15,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 7),
                              child: Text(
                                '104 м²',
                                style: TextStyle(
                                  fontFamily: 'SFProDisplay',
                                  color: Colors.white,
                                  letterSpacing: 0.07,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
