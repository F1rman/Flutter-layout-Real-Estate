import 'package:buildings/widgets/my_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../styles/style.dart';

class SendRequestModal extends StatelessWidget {
  SendRequestModal({super.key});

  var selected = ['3'];
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: MediaQuery.of(context).viewInsets.bottom == 0
            ? 500
            : 500 + MediaQuery.of(context).viewInsets.bottom,
        decoration: new BoxDecoration(
          color: const Color(0xff0E102C),
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(24.0),
            topRight: const Radius.circular(24.0),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 20),
              width: 89,
              height: 2,
              color: Colors.white.withOpacity(1 / 4),
            ),
            const Text(
              'Заявка на запит',
              style: h2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 15, left: 30),
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    // controller: nameCtrl,
                    autovalidateMode: AutovalidateMode.always,
                    // onChanged: (e) => {setState(() {})},
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ваше імя',
                      hintStyle: TextStyle(
                        fontFamily: 'SFProDisplay',
                        letterSpacing: -.24,
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const MyDivider(),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    // controller: nameCtrl,
                    autovalidateMode: AutovalidateMode.always,
                    // onChanged: (e) => {setState(() {})},
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontFamily: 'SFProDisplay',
                        letterSpacing: -.24,
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const MyDivider(),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    // controller: nameCtrl,
                    autovalidateMode: AutovalidateMode.always,
                    // onChanged: (e) => {setState(() {})},
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Тема',
                      hintStyle: TextStyle(
                        fontFamily: 'SFProDisplay',
                        letterSpacing: -.24,
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const MyDivider(),
                  const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Текст повідомлення',
                      hintStyle: TextStyle(
                        fontFamily: 'SFProDisplay',
                        letterSpacing: -.24,
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    maxLines: 6,
                    keyboardType: TextInputType.multiline,
                  ),
                  const MyDivider(
                    bottom: 24,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: TextButton(
                            style: ButtonStyle(
                              overlayColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.transparent),
                            ),
                            onPressed: () => {Get.back()},
                            child: Text(
                              'Відхилити запит',
                              style: text.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 44,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          onPressed: () => {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => Theme(
                                data: ThemeData.dark(),
                                child: CupertinoAlertDialog(
                                  title: Text("Запит успішно надіслано"),
                                  content: Text("Ми скоро вам зателефонуємо"),
                                  actions: <Widget>[
                                    CupertinoDialogAction(
                                      onPressed: () => {Get.back()},
                                      child: Text("OK"),
                                    )
                                  ],
                                ),
                              ),
                            )
                          },
                          child: Center(
                              child: Text(
                            'Відправити',
                            style: textButton.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
