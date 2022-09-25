import 'package:flutter/material.dart';
import '../styles/style.dart';
import '../widgets/my_button.dart';
import '../widgets/my_icons.dart';
import 'home_after_filter.dart';
import 'range_slider.dart';
import 'toggle_button.dart';

class FilterModal extends StatefulWidget {
  const FilterModal({super.key});

  @override
  State<FilterModal> createState() => _FilterModalState();
}

class _FilterModalState extends State<FilterModal> {
  var selected = ['3'];
  @override
  Widget build(BuildContext context) {
    var romArr = ['Студія', 1, 2, 3, 4, 5, '6+'];
    return Scaffold(
      backgroundColor: const Color(0xFF070817),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8, top: 22),
                width: 30,
                height: 30,
                child: Material(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xFF2C2C2E),
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    }, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/img/xmark.png',
                          width: 10,
                        ), // icon
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 22),
                        child: const Text(
                          'Фільтр пошуку',
                          style: modalHeader,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, right: 5),
                        child: TextButton(
                          onPressed: () => {},
                          child: Text(
                            'Очистити',
                            style: modalHeader.copyWith(
                                color: const Color(0xFF0A84FF),
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            top: 56,
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  child: Column(
                    children: [
                      const ToggleButton(),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ціна за місяць',
                              style: greyText,
                            ),
                            const Text(
                              '\$650 - \$1400',
                              style: text,
                            ),
                          ],
                        ),
                      ),
                      const CustomRangeSlider(),
                      Row(
                        children: [
                          Text(
                            'Місце розташування',
                            style: greyText,
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 10),
                                height: 44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color:
                                      const Color(0xFF787880).withOpacity(.3),
                                ),
                                child: TextFormField(
                                  style: const TextStyle(color: Colors.white),
                                  onChanged: (value) {},
                                  autovalidateMode: AutovalidateMode.always,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Адреса, метро, район, ЖК',
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
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 12),
                              width: 44,
                              height: 44,
                              child: Material(
                                borderRadius: BorderRadius.circular(6),
                                color: const Color(0xFF787880).withOpacity(.3),
                                clipBehavior: Clip.antiAlias,
                                child: InkWell(
                                  onTap: () {}, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/img/gps.png',
                                        width: 24,
                                      ), // icon
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Text(
                              'Кімнат в квартирі',
                              style: greyText,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          for (var item in romArr)
                            Container(
                              margin: const EdgeInsets.only(top: 12, right: 8),
                              child: Row(
                                children: [
                                  Container(
                                    constraints:
                                        const BoxConstraints(minWidth: 28),
                                    height: 28,
                                    child: Material(
                                      borderRadius: BorderRadius.circular(8),
                                      color: selected.contains(item.toString())
                                          ? Colors.white
                                          : const Color(0xff787880)
                                              .withOpacity(.3),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(8),
                                        onTap: () {
                                          setState(() {
                                            if (!selected
                                                .contains(item.toString())) {
                                              selected.add(item.toString());
                                            } else {
                                              selected.remove(item.toString());
                                            }
                                          });
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 5),
                                          child: Text(
                                            item.toString(),
                                            style: text.copyWith(
                                                color: selected.contains(
                                                        item.toString())
                                                    ? Colors.black
                                                    : Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 12),
                        child: Row(
                          children: [
                            Text(
                              'Квадратний m²',
                              style: greyText,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 12),
                            width: 127,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(600),
                              color: const Color(0xFF787880).withOpacity(.3),
                            ),
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              onChanged: (value) {},
                              autovalidateMode: AutovalidateMode.always,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Від',
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
                          Container(
                            width: 127,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(600),
                              color: const Color(0xFF787880).withOpacity(.3),
                            ),
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              onChanged: (value) {},
                              autovalidateMode: AutovalidateMode.always,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'До',
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
                          Container(
                            margin: const EdgeInsets.only(
                              left: 21,
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(100),
                              onTap: () => {
                                // print('clear')
                              },
                              child: Icon(
                                MyIcons.crossIcon,
                                color: Colors.white.withOpacity(.4),
                                size: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                      MediaQuery.of(context).viewInsets.bottom != 0
                          ? const SizedBox(
                              height: 600,
                            )
                          : Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 15,
            bottom: 54,
            width: MediaQuery.of(context).size.width - 30,
            child: MyButton(
                text: 'Шукати',
                onPressed: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => HomeFilterResults(),
                        ),
                      )
                    }),
          )
        ],
      ),
    );
  }
}
