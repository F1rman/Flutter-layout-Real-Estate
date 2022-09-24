import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    Key? key,
    this.top = 0.0,
    this.bottom = 0.0,
  }) : super(key: key);
  final top;
  final bottom;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.15,
      child: Container(
        margin: EdgeInsets.only(
          top: top.toDouble(),
          bottom: bottom.toDouble(),
        ),
        height: 1,
        width: double.infinity,
        color: Colors.white,
      ),
    );
  }
}
