import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/navigation_controller.dart';

class Items {
  final String name;
  final String icon;

  Items(
    this.name,
    this.icon,
  );
}

final items = [
  Items('Головна', 'home-icon'),
  Items('Збережені', 'saved-icon'),
  Items('Контакти', 'contacts-icon'),
];

class BottomNavigation extends StatelessWidget {
  BottomNavigation({
    super.key,
  });
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
                    for (var item in items) MenuItem(item: item),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final Controller c = Get.find();
  MenuItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Items item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() => Opacity(
            opacity: c.index.value == items.indexOf(item) ? 1 : .4,
            child: MaterialButton(
              onPressed: () => {c.index.value = items.indexOf(item)},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 24,
                      child: Image.asset('assets/img/${item.icon}.png')),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    item.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
