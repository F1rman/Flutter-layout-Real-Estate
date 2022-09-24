import 'package:flutter/material.dart';

import '../styles/style.dart';

class Contacts extends StatelessWidget {
  const Contacts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          color: Color(0xFF252525).withOpacity(.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () => {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '+380 68 021 83-22',
                style: text,
              ),
              Image.asset(
                'assets/img/call.png',
                height: 20,
              ),
            ],
          ),
        ),
        MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          color: Color(0xFF252525).withOpacity(.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () => {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Проспект Гагаріна 13/1',
                style: text,
              ),
              Image.asset(
                'assets/img/location_white.png',
                height: 20,
              ),
            ],
          ),
        ),
        MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          color: Color(0xFF252525).withOpacity(.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () => {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'orendkakyivua@mail.com',
                style: text,
              ),
              Image.asset(
                'assets/img/sms.png',
                height: 20,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 12),
                  child: MaterialButton(
                    color: Color(0xFFFF9176),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    onPressed: () => {},
                    child: SizedBox(
                        width: 100,
                        height: 44,
                        child: Center(
                            child: Text(
                          'Зателефонувати',
                          style: textButton,
                        ))),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () => {},
                  child: SizedBox(
                      width: 100,
                      height: 44,
                      child: Center(
                          child: Text(
                        'Написати',
                        style: textButton,
                      ))),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
