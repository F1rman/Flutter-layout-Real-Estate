// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderCardSmall extends StatefulWidget {
  SliderCardSmall({
    Key? key,
    this.isSavedPage,
  }) : super(key: key);
  final isSavedPage;
  CarouselController buttonCarouselController = CarouselController();

  @override
  State<SliderCardSmall> createState() => _SliderCardSmallState();
}

class _SliderCardSmallState extends State<SliderCardSmall> {
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
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Stack(
            children: [
              CarouselSlider(
                carouselController: widget.buttonCarouselController,
                options: CarouselOptions(
                    viewportFraction: 1,
                    height: 100.0,
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
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            'assets/img/slide_1.png',
                            fit: BoxFit.cover,
                            height: 100,
                          ),
                          Positioned(
                            bottom: -1,
                            left: -1,
                            child: IgnorePointer(
                              ignoring: true,
                              child: Container(
                                height: 50,
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
              widget.isSavedPage == false
                  ? Positioned(
                      top: 8,
                      right: 8,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 7),
                            width: 24,
                            height: 24,
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
                                      width: 13,
                                    ), // icon
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
              Positioned(
                left: 0,
                right: 0,
                bottom: 8,
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
                          color: Colors.white
                              .withOpacity(slideIndex == entry.key ? 1 : 0.4)),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        )
        // CardSlider
      ],
    );
  }
}
