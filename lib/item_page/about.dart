import 'package:flutter/material.dart';

import '../styles/style.dart';

class About extends StatelessWidget {
  const About({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Row(
            children: [
              Text(
                'Опис',
                style: text.copyWith(fontSize: 17, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Text(
          'Все дуже гарно, рекомендую. Є 3 кімнати \n56 м2. Міні студія. Не знаю який ще проект потрібно \nописати але це не остаточна інфа по опису, можно\nще добавити',
          style: text.copyWith(fontSize: 13, height: 1.4),
        ),
        Container(
          margin: const EdgeInsets.only(top: 2),
          child: TextButton(
            onPressed: () => {},
            child: Text(
              'Дивитись ще',
              style: modalHeader.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  fontSize: 13),
            ),
          ),
        ),
      ],
    );
  }
}
