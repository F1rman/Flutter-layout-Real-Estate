import 'package:buildings/contact/send_request_modal.dart';
import 'package:buildings/styles/style.dart';
import 'package:buildings/widgets/my_divider.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/map.dart';
import '../widgets/my_icons.dart';

class FeedbackForm extends StatefulWidget {
  FeedbackForm({super.key});

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF070817),
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    child: Row(
                      children: [
                        const Text(
                          'Форма зворотнього зв’язвку',
                          style: h2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MapSample(),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            'Короткий опис',
                            style: h2.copyWith(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          'Наша компанія буде рада вам допомогти в пошуку гарного житла',
                          style: text.copyWith(
                            fontSize: 13,
                            height: 1.4,
                            letterSpacing: -0.08,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 7),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 9),
                                      child: const Icon(
                                        MyIcons.location,
                                        color: Color(0xffFF9176),
                                        size: 20,
                                      ),
                                    ),
                                    Text('Адреса', style: greyText),
                                  ],
                                ),
                              ),
                              SelectableText(
                                'Київ обл, Ірпінь, Шевченка 7, 08200',
                                style: h2.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const MyDivider(
                                top: 12,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 7),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 9),
                                      child: const Icon(
                                        MyIcons.location,
                                        color: Color(0xffFF9176),
                                        size: 20,
                                      ),
                                    ),
                                    Text('Контактний телефон', style: greyText),
                                  ],
                                ),
                              ),
                              SelectableText(
                                '+38 (068) 021-83-22',
                                style: h2.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const MyDivider(
                                top: 12,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 7),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 9),
                                      child: const Icon(
                                        MyIcons.location,
                                        color: Color(0xffFF9176),
                                        size: 20,
                                      ),
                                    ),
                                    Text('Email', style: greyText),
                                  ],
                                ),
                              ),
                              SelectableText(
                                'alexand4r.ux@gmail.com',
                                style: h2.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const MyDivider(
                                top: 12,
                                bottom: 18,
                              ),
                              MaterialButton(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                onPressed: () => {
                                  showBarModalBottomSheet(
                                    useRootNavigator: true,
                                    topControl: const Text(''),
                                    expand: false,
                                    context: context,
                                    backgroundColor: Colors.transparent,
                                    builder: (context) => SendRequestModal(),
                                  )
                                },
                                child: const SizedBox(
                                  height: 44,
                                  child: Center(
                                    child: Text(
                                      'Надіслати запит',
                                      style: textButton,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const BottomNavigation(),
        ],
      ),
    );
  }
}
