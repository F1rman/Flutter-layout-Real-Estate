import 'package:flutter/material.dart';
import '../styles/style.dart';
import '../widgets/my_button.dart';
import 'toggle_button.dart';

class FilterModal extends StatelessWidget {
  const FilterModal({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF070817),
      body: Column(
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
                                color: Color(0xFF0A84FF),
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              child: Column(
                children: [
                  ToggleButton(),
                  Row(
                    children: [
                      Text(
                        'Ціна за місяць',
                        style: greyText,
                      ),
                    ],
                  ),
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
                              color: const Color(0xFF787880).withOpacity(.3),
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
                  Row(
                    children: [
                      Text(
                        'Кімнат в квартирі',
                        style: greyText,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Квадратний m²',
                        style: greyText,
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin: const EdgeInsets.only(top: 24, bottom: 57),
                    child: MyButton(
                        text: 'Шукати',
                        onPressed: () => {Navigator.pop(context)}),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
