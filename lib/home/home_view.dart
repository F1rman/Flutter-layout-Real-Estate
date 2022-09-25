import 'package:buildings/saved/saved_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../contact/contact_view.dart';
import '../controllers/navigation_controller.dart';
import '../widgets/bottom_navigation.dart';
import 'home.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final Controller c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF070817),
      body: Stack(children: [
        Obx(
          () => IndexedStack(
            index: c.index.value,
            children: const [
              Home(),
              SavedView(),
              ContactView(),
            ],
          ),
        ),
        const BottomNavigation(),
      ]),
    );
  }
}
