import 'package:flutter/material.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'dart:math' as math;
import '../styles/style.dart';

class LangDropDown extends StatefulWidget {
  const LangDropDown({
    Key? key,
  }) : super(key: key);

  @override
  State<LangDropDown> createState() => _LangDropDownState();
}

class _LangDropDownState extends State<LangDropDown> {
  final List<String> items = [
    'UA',
    'EN',
  ];
  String? selectedValue = 'UA';
  bool opened = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6),
      decoration: BoxDecoration(
          color: const Color(0xFF787880).withOpacity(.3),
          borderRadius: BorderRadius.circular(8)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          buttonDecoration: BoxDecoration(
              color: const Color(0xFF787880).withOpacity(.3),
              borderRadius: BorderRadius.circular(8)),
          customButton: SizedBox(
            width: 57,
            height: 30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: Text(
                    selectedValue ?? '',
                    style: const TextStyle(
                      fontFamily: 'SFProDisplay',
                      letterSpacing: -.41,
                      color: Color(0xFFFFFFFF),
                      fontSize: 17,
                      height: 1.35,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: !opened ? 0 : -math.pi,
                  child: Image.asset(
                    'assets/img/arrow-down.png',
                    width: 16,
                  ),
                )
              ],
            ),
          ),
          dropdownWidth: 57,
          dropdownPadding: const EdgeInsets.all(0),
          itemPadding: const EdgeInsets.only(left: 0, right: 0),
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFF292A37),
          ),
          hint: const Text('Select Item', style: text),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Container(
                      padding: const EdgeInsets.only(top: 5, left: 8),
                      width: double.infinity,
                      height: 30,
                      color: selectedValue == item
                          ? const Color(0xFFFF9176)
                          : Colors.transparent,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontFamily: 'SFProDisplay',
                          letterSpacing: -.41,
                          color: Color(0xFFFFFFFF),
                          fontSize: 17,
                          height: 1.35,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onMenuStateChange: (isOpen) => {
            setState(() {
              opened = isOpen;
            })
          },
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          buttonHeight: 40,
          itemHeight: 30,
          offset: const Offset(0, -8),
        ),
      ),
    );
  }
}
