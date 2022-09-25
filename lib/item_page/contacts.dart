import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          color: const Color(0xFF252525).withOpacity(.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () => {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          color: const Color(0xFF252525).withOpacity(.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () => {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          color: const Color(0xFF252525).withOpacity(.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () => {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
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
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: MaterialButton(
                    color: const Color(0xFFFF9176),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    onPressed: () => {},
                    child: const SizedBox(
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
                  onPressed: () => {Get.toNamed('/feedback_form')},
                  child: const SizedBox(
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
