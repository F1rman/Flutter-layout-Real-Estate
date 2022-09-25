// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderCardItemPage extends StatefulWidget {
  const SliderCardItemPage({
    Key? key,
    this.click,
  }) : super(key: key);

  final click;

  @override
  State<SliderCardItemPage> createState() => _SliderCardItemPageState();
}

class _SliderCardItemPageState extends State<SliderCardItemPage> {
  CarouselController buttonCarouselController = CarouselController();
  getSize(entry) {
    var size = 6;
    if (slideIndex == entry.key ||
        slideIndex == entry.key + 2 ||
        slideIndex == entry.key - 2 ||
        slideIndex == entry.key + 1 ||
        slideIndex == entry.key - 1) {
      size = 6;
    } else if (slideIndex == entry.key + 3 || slideIndex == entry.key - 3) {
      size = 5;
    } else {
      size = 3;
    }
    return size.toDouble();
  }

  var slideIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: widget.click,
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                color: const Color(0xFF787880).withOpacity(.3),
                borderRadius: BorderRadius.circular(24)),
            child: Stack(
              children: [
                CarouselSlider(
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                      padEnds: false,
                      viewportFraction: 1,
                      height: 300.0,
                      onPageChanged: (index, reason) {
                        // print(index);
                        setState(() {
                          slideIndex = index;
                        });
                      }),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Stack(
                          children: [
                            Image.asset(
                              'assets/img/slide_1.png',
                              fit: BoxFit.cover,
                              height: 300,
                            ),
                            Positioned(
                              bottom: -1,
                              left: -1,
                              child: IgnorePointer(
                                ignoring: true,
                                child: Container(
                                  height: 144,
                                  width: MediaQuery.of(context).size.width + 2,
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                        Colors.transparent,
                                        Color(0xFF070817),
                                      ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter)),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }).toList(),
                ),
                const Positioned(
                  bottom: 65,
                  left: 24,
                  child: Text(
                    'ЖК Липки',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay',
                      color: Colors.white,
                      letterSpacing: -.41,
                      fontSize: 17,
                      height: 1.4,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 35,
                  left: 24,
                  child: Text(
                    'Від 1499\$ місяць',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay',
                      color: Colors.white,
                      letterSpacing: -.35,
                      fontSize: 22,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: SizedBox(
                    width: 44,
                    height: 44,
                    child: Material(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFF090A1B),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () => {Navigator.pop(context)},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/img/back.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Row(
                    children: [
                      Container(
                        width: 77,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFF090A1B),
                          border: Border.all(
                            color: const Color(0xFF222230),
                          ),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFF090A1B),
                          clipBehavior: Clip.antiAlias,
                          child: InkWell(
                            onTap: () {}, // button pressed
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/map.png',
                                  width: 20,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: const Text(
                                    'Карта',
                                    style: TextStyle(
                                      fontFamily: 'SFProDisplay',
                                      letterSpacing: -.24,
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 13,
                                      height: 1.35,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 7),
                        width: 44,
                        height: 44,
                        child: Material(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFF090A1B),
                          clipBehavior: Clip.antiAlias,
                          child: InkWell(
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/img/saved-icon.png',
                                  width: 20,
                                ), // icon
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 17,
                  left: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [1, 2, 3, 4, 5].asMap().entries.map((entry) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: getSize(entry),
                        height: getSize(entry),
                        margin: const EdgeInsets.symmetric(horizontal: 2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(
                                slideIndex == entry.key ? 1 : 0.4)),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        )
        // CardSlider
      ],
    );
  }
}
