import 'package:flutter/material.dart';

import '../styles/style.dart';

class AboutCompany extends StatelessWidget {
  const AboutCompany({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Орендодавець: ',
                      style: text.copyWith(fontSize: 17),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'AlexGroup',
                            style: TextStyle(color: Color(0xFFFF9176))),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Text(
                      'Компанія',
                      style: greyText,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const CircleAvatar(
                radius: 22,
                backgroundColor: Color(0xFF151840),
                child: Text('A'),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Row(
            children: [
              Text(
                'Короткий опис компанії',
                style: text.copyWith(fontSize: 15, fontWeight: FontWeight.w500),
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
