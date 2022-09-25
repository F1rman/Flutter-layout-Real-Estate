import 'package:buildings/styles/style.dart';
import 'package:buildings/widgets/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Feedback extends StatefulWidget {
  Feedback({super.key});

  @override
  State<Feedback> createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  TextEditingController nameCtrl = new TextEditingController(text: '');
  TextEditingController telCtrl = new TextEditingController(text: '');
  TextEditingController emailCtrl = new TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF070817),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 33),
                      width: 44,
                      height: 44,
                      child: Material(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF0E1131),
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () => {Navigator.pop(context)},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/img/back.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Зворотній зв\'язок',
                      style: h2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 6),
                            child: Text(
                              'Ваше ім’я',
                              style: greyText.copyWith(
                                  color: Colors.white.withOpacity(0.4)),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFF1C1C1E),
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                TextFormField(
                                  style: const TextStyle(color: Colors.white),
                                  controller: nameCtrl,
                                  autovalidateMode: AutovalidateMode.always,
                                  onChanged: (e) => {setState(() {})},
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Олександр',
                                    hintStyle: TextStyle(
                                      fontFamily: 'SFProDisplay',
                                      letterSpacing: -.24,
                                      color: Color(0xFF6b6c75),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: AnimatedOpacity(
                                    duration: Duration(milliseconds: 300),
                                    opacity: nameCtrl.text == '' ? 0 : 1,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        left: 21,
                                      ),
                                      child: InkWell(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        onTap: () => {
                                          setState(() {
                                            nameCtrl.clear();
                                          })
                                        },
                                        child: Icon(
                                          MyIcons.crossIcon,
                                          color: Colors.white.withOpacity(.4),
                                          size: 17,
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
                              'Номер телефону',
                              style: greyText.copyWith(
                                  color: Colors.white.withOpacity(0.4)),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFF1C1C1E),
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                TextFormField(
                                  controller: telCtrl,
                                  onChanged: (e) => {setState(() {})},
                                  style: const TextStyle(color: Colors.white),
                                  autovalidateMode: AutovalidateMode.always,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '+ 380 (',
                                    hintStyle: TextStyle(
                                      fontFamily: 'SFProDisplay',
                                      letterSpacing: -.24,
                                      color: Color(0xFF6b6c75),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    child: AnimatedOpacity(
                                  duration: Duration(milliseconds: 300),
                                  opacity: telCtrl.text == '' ? 0 : 1,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      left: 21,
                                    ),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(100),
                                      onTap: () => {
                                        setState(() {
                                          telCtrl.clear();
                                        })
                                      },
                                      child: Icon(
                                        MyIcons.crossIcon,
                                        color: Colors.white.withOpacity(.4),
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                ))
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
                              'Email',
                              style: greyText.copyWith(
                                  color: Colors.white.withOpacity(0.4)),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFF1C1C1E),
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                TextFormField(
                                    controller: emailCtrl,
                                    onChanged: (e) => {setState(() {})},
                                    style: const TextStyle(color: Colors.white),
                                    autovalidateMode: AutovalidateMode.always,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'forexample@mail.com',
                                      hintStyle: TextStyle(
                                        fontFamily: 'SFProDisplay',
                                        letterSpacing: -.24,
                                        color: Color(0xFF6b6c75),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )),
                                Positioned(
                                    child: AnimatedOpacity(
                                  duration: Duration(milliseconds: 300),
                                  opacity: emailCtrl.text == '' ? 0 : 1,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      left: 21,
                                    ),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(100),
                                      onTap: () => {emailCtrl.clear()},
                                      child: Icon(
                                        MyIcons.crossIcon,
                                        color: Colors.white.withOpacity(.4),
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                ))
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
                      onPressed: () => {},
                      child: const Center(
                          child: Text(
                        'Надіслати запит',
                        style: textButton,
                      )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
