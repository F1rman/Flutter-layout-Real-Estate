import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../widgets/my_icons.dart';
import 'filter_modal.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    child: Icon(
                      MyIcons.searchNormal,
                      color: Colors.white,
                      size: 24,
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
                  Icon(
                    MyIcons.filter,
                    color: Colors.white,
                    size: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// 