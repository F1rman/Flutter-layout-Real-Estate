import 'package:flutter/material.dart';

import '../styles/style.dart';

class RentOption extends StatelessWidget {
  const RentOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 6),
          child: Row(
            children: [
              Text(
                'Які зручності на Вас чекають',
                style: text.copyWith(fontSize: 17, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                right: 14,
                top: 12,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/img/roms.png',
                    height: 26,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: const Text(
                      '3км',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay',
                        color: Colors.white,
                        letterSpacing: 0.07,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 14,
                top: 12,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/img/area.png',
                    height: 26,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: const Text(
                      '56 м²',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay',
                        color: Colors.white,
                        letterSpacing: 0.07,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 14,
                top: 12,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/img/bathroom.png',
                    height: 32,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: const Text(
                      '1 Душова кабіна',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay',
                        color: Colors.white,
                        letterSpacing: 0.07,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
