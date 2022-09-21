import 'package:flutter/material.dart';

import '../styles/style.dart';

class myButton extends StatelessWidget {
  const myButton({
    Key? key,
    this.text,
    this.onPressed,
  }) : super(key: key);
  final onPressed;
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32),
      width: 164,
      height: 50,
      child: MaterialButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
            width: 164,
            height: 50,
            child: Center(
                child: Text(
              text,
              style: text_button,
            ))),
        onPressed: onPressed,
      ),
    );
  }
}
