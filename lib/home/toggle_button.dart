import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({
    Key? key,
  }) : super(key: key);

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  var posBtn = 0.0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var widthButton = (size.width - 34) / 2;
    return Container(
      height: 32,
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 10,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xff787880).withOpacity(.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.ease,
            duration: const Duration(milliseconds: 200),
            left: posBtn,
            child: Container(
              margin: const EdgeInsets.all(1),
              height: 30,
              width: widthButton,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          Theme(
            data: ThemeData(
              textButtonTheme: TextButtonThemeData(
                style: ButtonStyle(
                  overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.white38.withOpacity(.1),
                  ),
                ),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    width: widthButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          posBtn = 0;
                        });
                        // print(posBtn);
                      },
                      child: Text(
                        'Покупка',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay',
                          color: posBtn == 0
                              ? const Color(0xFF070817)
                              : Colors.white,
                          fontSize: 13,
                          height: 1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    width: widthButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          posBtn = widthButton;
                          // print(posBtn);
                        });
                      },
                      child: Text(
                        'Оренда',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay',
                          color: posBtn == widthButton
                              ? const Color(0xFF070817)
                              : Colors.white,
                          fontSize: 13,
                          height: 1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
