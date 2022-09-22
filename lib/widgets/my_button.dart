import 'package:flutter/material.dart';

import '../styles/style.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    this.text,
    this.onPressed,
    this.width,
  }) : super(key: key);
  final onPressed;
  final text;
  final width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
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
