import 'package:flutter/material.dart';

import '../home/home.dart';
import '../styles/style.dart';
import '../widgets/my_button.dart';

class Splash extends StatelessWidget {
  const Splash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(children: [
          Stack(children: [
            Positioned(
              left: 34,
              top: 56,
              child: Image.asset(
                "assets/img/logo.png",
                fit: BoxFit.cover,
                height: 64,
                width: 66,
              ),
            ),
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
                text: TextSpan(
                  text: 'Об’єкт твоєї ',
                  style: h1,
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'мрії',
                        style: TextStyle(color: Color(0xFFFF9176))),
                  ],
                ),
              ),
            ),
          ]),
          Container(
            margin: EdgeInsets.only(top: 16),
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
                          builder: (context) => Home(),
                        ),
                      )
                    }),
          )
        ]),
      ],
    );
  }
}
