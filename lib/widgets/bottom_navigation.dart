import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/navigation_controller.dart';
import 'my_icons.dart';

class Items {
  final String name;
  final IconData icon;

  Items(
    this.name,
    this.icon,
  );
}

final items = [
  Items('Головна', MyIcons.home),
  Items('Збережені', MyIcons.heart),
  Items('Контакти', MyIcons.messages),
];

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
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
                  Icon(
                    item.icon,
                    color: Colors.white,
                    size: 20,
                  ),
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
