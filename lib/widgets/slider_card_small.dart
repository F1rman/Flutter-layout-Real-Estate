import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderCardSmall extends StatelessWidget {
  const SliderCardSmall({
    Key? key,
    required this.buttonCarouselController,
  }) : super(key: key);

  final CarouselController buttonCarouselController;

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
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                    viewportFraction: 1,
                    height: 100.0,
                    onPageChanged: (index, reason) {
                      print(index);
                    }),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Image.asset('assets/img/slide_1.png'),
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
              Positioned(
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
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [1, 2, 3, 4, 5].asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () =>
                          buttonCarouselController.animateToPage(entry.key),
                      child: Container(
                        width: 3 == entry.key
                            ? 5
                            : 4 == entry.key
                                ? 4
                                : 6,
                        height: 3 == entry.key
                            ? 5
                            : 4 == entry.key
                                ? 4
                                : 6,
                        margin: const EdgeInsets.symmetric(horizontal: 2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                                .withOpacity(0 == entry.key ? 1 : 0.4)),
                      ),
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
