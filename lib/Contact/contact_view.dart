import 'package:buildings/styles/style.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  ContactView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Контакти',
          style: h1,
        )
      ],
    );
  }
}
