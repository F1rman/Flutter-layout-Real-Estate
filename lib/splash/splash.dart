import 'package:buildings/widgets/my_icons.dart';
import 'package:flutter/material.dart';

import '../home/home_view.dart';
import '../styles/style.dart';
import '../widgets/my_button.dart';

class Splash extends StatelessWidget {
  const Splash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF070817),
      body: ListView(
        children: [
          Column(children: [
            Stack(children: [
              const Positioned(
                  left: 34,
                  top: 56,
                  child: Icon(
                    MyIcons.logo,
                    color: Colors.white,
                    size: 64,
                  )),
              Positioned(
                child: Image.asset(
                  "assets/img/bg_1.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/img/shadows.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width,
                bottom: 0,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Об’єкт твоєї ',
                    style: h1,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'мрії',
                          style: TextStyle(color: Color(0xFFFF9176))),
                    ],
                  ),
                ),
              ),
            ]),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Text(
                'Знайдіть ідеальний простір вашої \n мрії всього за кілька кліків',
                style: text.copyWith(),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              child: MyButton(
                  width: 164.0,
                  text: 'Досліджувати',
                  onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ),
                        )
                      }),
            )
          ]),
        ],
      ),
    );
  }
}
