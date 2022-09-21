import 'package:flutter/material.dart';
import '../styles/style.dart';
import '../widgets/bottom_navigation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF070817),
      body: Stack(children: [
        ListView(
          children: [
            Column(
              children: [
                for (var i = 0; i < 200; i++)
                  const Text(
                    '111111111111111111111111111111111',
                    style: h1,
                  ),
              ],
            ),
          ],
        ),
        BottomNavigation(),
      ]),
    );
  }
}
