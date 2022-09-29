import 'package:buildings/widgets/my_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderCard extends StatefulWidget {
  SliderCard({
    Key? key,
    this.click,
  }) : super(key: key);

  CarouselController buttonCarouselController = CarouselController();
  // ignore: prefer_typing_uninitialized_variables
  final click;

  @override
  State<SliderCard> createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  var slideIndex = 0;
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
                borderRadius: BorderRadius.circular(8)),
            child: Stack(
              children: [
                CarouselSlider(
                  carouselController: widget.buttonCarouselController,
                  options: CarouselOptions(
                      padEnds: false,
                      viewportFraction: 1,
                      height: 246.0,
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
                              height: 246,
                            ),
                            Positioned(
                              bottom: -1,
                              left: -1,
                              child: IgnorePointer(
                                ignoring: true,
                                child: Container(
                                  height: 123,
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
                            const Positioned(
                              bottom: 65,
                              left: 24,
                              child: Text(
                                'ЖК Липки',
                                style: TextStyle(
                                  fontFamily: 'SFProDisplay',
                                  color: Colors.white,
                                  letterSpacing: -.41,
                                  fontSize: 15,
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
                                  fontSize: 20,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
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
                                    height: 32,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFF090A1B),
                                      border: Border.all(
                                        color: const Color(0xFF222230),
                                      ),
                                    ),
                                    child: Material(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFF090A1B),
                                      clipBehavior: Clip.antiAlias,
                                      child: InkWell(
                                        onTap: () {}, // button pressed
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              MyIcons.map,
                                              size: 18,
                                              color: Color(0xffFF9176),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 5),
                                              child: const Text(
                                                'Карта',
                                                style: TextStyle(
                                                  fontFamily: 'SFProDisplay',
                                                  letterSpacing: -.24,
                                                  color: Color(0xFFFFFFFF),
                                                  fontSize: 11,
                                                  height: 1.1,
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
                                    width: 32,
                                    height: 32,
                                    child: Material(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color(0xFF090A1B),
                                      clipBehavior: Clip.antiAlias,
                                      child: InkWell(
                                        onTap: () {}, // button pressed
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/img/saved-icon.png',
                                              width: 15,
                                            ), // icon
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }).toList(),
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
