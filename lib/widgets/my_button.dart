import 'package:flutter/material.dart';

import '../styles/style.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    this.text,
    this.onPressed,
  }) : super(key: key);
  final onPressed;
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      width: 164,
      height: 50,
      child: MaterialButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        onPressed: onPressed,
        child: SizedBox(
            width: 164,
            height: 50,
            child: Center(
                child: Text(
              text,
              style: textButton,
            ))),
      ),
    );
  }
}
