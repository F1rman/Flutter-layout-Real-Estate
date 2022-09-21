import 'dart:ui';

import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: 68,
      bottom: 34,
      left: 15,
      right: 15,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
            child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF090b1f).withOpacity(0.66),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Opacity(
                        opacity: 1,
                        child: MaterialButton(
                          onPressed: () => {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 24,
                                  child:
                                      Image.asset('assets/img/home-icon.png')),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Головна',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Opacity(
                        opacity: .4,
                        child: MaterialButton(
                          onPressed: () => {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 24,
                                  child:
                                      Image.asset('assets/img/saved-icon.png')),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Збережені',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Opacity(
                        opacity: .4,
                        child: MaterialButton(
                          onPressed: () => {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 24,
                                  child: Image.asset(
                                      'assets/img/contacts-icon.png')),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Контакти',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
