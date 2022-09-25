import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'dart:math' as math;
import '../styles/style.dart';
import '../widgets/my_icons.dart';
import 'filter_search.dart';
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
                Text(
                  'Локація',
                  style: greyText,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      opened = !opened;
                    });
                    showBarModalBottomSheet(
                      useRootNavigator: true,
                      topControl: const Text(''),
                      expand: false,
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => const LocationModal(),
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
                      const Icon(
                        MyIcons.location,
                        color: Color(0xffFF9176),
                        size: 20,
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
                const LangDropDown(),
              ],
            ),
          ],
        ),
        const SearchFilter(),
      ],
    );
  }
}
