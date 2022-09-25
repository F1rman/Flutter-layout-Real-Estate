import 'package:buildings/styles/style.dart';
import 'package:buildings/widgets/my_divider.dart';
import 'package:buildings/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Text(
                'Контакти',
                style: h2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: const CircleAvatar(
                          radius: 22,
                          backgroundColor: Color(0xFF151840),
                          child: Text('A'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Олександр Єрьомін',
                              style: text.copyWith(fontSize: 17),
                            ),
                          ),
                          Text(
                            'Орендодавець',
                            style: greyText,
                          ),
                        ],
                      )
                    ],
                  ),
                  const MyDivider(
                    top: 16,
                    bottom: 16,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          child: Text(
                            'Компанія',
                            style: greyText,
                          ),
                        ),
                        MaterialButton(
                          height: 44,
                          color: const Color(0xFF252525).withOpacity(.5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          onPressed: () => {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'UaBuilding',
                                style: text,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          child: Text(
                            'Адреса',
                            style: greyText,
                          ),
                        ),
                        MaterialButton(
                          height: 44,
                          color: const Color(0xFF252525).withOpacity(.5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          onPressed: () => {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Вул, Шевченко 7, Ірпінь',
                                style: text,
                              ),
                              Icon(
                                MyIcons.chevron,
                                size: 14,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          child: Text(
                            'Контактний телефон',
                            style: greyText,
                          ),
                        ),
                        MaterialButton(
                          height: 44,
                          color: const Color(0xFF252525).withOpacity(.5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          onPressed: () => {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SelectableText(
                                '+380 68-021-83-22',
                                style: text,
                              ),
                              Icon(
                                MyIcons.chevron,
                                size: 14,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    height: 44,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    onPressed: () => {Get.toNamed('/feedback')},
                    child: const Center(
                        child: Text(
                      'Зворотній зв\'язок',
                      style: textButton,
                    )),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
