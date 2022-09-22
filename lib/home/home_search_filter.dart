import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../styles/style.dart';
import 'location_modal.dart';

class HomeFilterSearch extends StatelessWidget {
  const HomeFilterSearch({
    Key? key,
  }) : super(key: key);

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
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Локація',
                    style: greyText,
                  ),
                ),
                GestureDetector(
                  onTap: () => {
                    showBarModalBottomSheet(
                      useRootNavigator: true,
                      topControl: Text(''),
                      expand: false,
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => LocationModal(),
                    )
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
                      Image.asset(
                        'assets/img/arrow-down.png',
                        width: 16,
                      ),
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
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  width: 57,
                  height: 30,
                  decoration: BoxDecoration(
                      color: const Color(0xFF787880).withOpacity(.3),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: const Text(
                          'UA',
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
                      Image.asset(
                        'assets/img/arrow-down.png',
                        width: 16,
                      ),
                    ],
                  ),
                ),
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
                  onTap: () {}, // button pressed
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
