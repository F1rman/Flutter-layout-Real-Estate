import 'package:flutter/material.dart';
import '../styles/style.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    this.text,
    this.onPressed,
    this.width = 164.0,
    this.height = 50.0,
    this.color = Colors.white,
  }) : super(key: key);
  final onPressed;
  final text;
  final width;
  final color;
  final height;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onPressed: onPressed,
      child: SizedBox(
          width: width,
          height: height,
          child: Center(
              child: Text(
            text,
            style: textButton,
          ))),
    );
  }
}
