import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'dart:math' as math;
import '../styles/style.dart';
import 'filter_modal.dart';
import 'lang_dropdown.dart';
import 'location_modal.dart';

class HomeFilterSearch extends StatefulWidget {
  const HomeFilterSearch({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeFilterSearch> createState() => _HomeFilterSearchState();
}

var opened = false;

class _HomeFilterSearchState extends State<HomeFilterSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Локація',
                    style: greyText,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      opened = !opened;
                    });
                    showBarModalBottomSheet(
                      useRootNavigator: true,
                      topControl: Text(''),
                      expand: false,
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => LocationModal(),
                    ).whenComplete(() {
                      setState(() {
                        opened = !opened;
                      });
                    });
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/location.png',
                        width: 17,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 14),
                        child: const Text(
                          'Україна, Київ',
                          style: TextStyle(
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
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Мова',
                  style: greyText,
                ),
                LangDropDown(),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                width: 274,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF090A1B),
                  border: Border.all(
                    color: const Color(0xFF222230),
                  ),
                ),
                height: 56,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Positioned(
                      left: 24,
                      child: Opacity(
                        opacity: .4,
                        child: Image.asset(
                          'assets/img/search-normal.png',
                          width: 24,
                        ),
                      ),
                    ),
                    Positioned(
                      width: 200,
                      left: 64,
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        onChanged: (value) {},
                        autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Пошук нерухомості',
                          hintStyle: TextStyle(
                            fontFamily: 'SFProDisplay',
                            letterSpacing: -.24,
                            color: Color(0xFF6b6c75),
                            fontSize: 13,
                            height: 1.35,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 15),
              width: 56,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: ExactAssetImage('assets/img/filter.png'),
                  fit: BoxFit.contain,
                ),
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF090A1B),
                border: Border.all(
                  color: const Color(0xFF222230),
                ),
              ),
              height: 56,
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF090A1B),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    showBarModalBottomSheet(
                      useRootNavigator: true,
                      topControl: Text(''),
                      expand: false,
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => FilterModal(),
                    );
                  }, // button pressed
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/img/filter.png',
                        width: 24,
                      ), // icon
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
// 