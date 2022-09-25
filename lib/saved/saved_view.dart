import 'package:buildings/styles/style.dart';
import 'package:buildings/widgets/my_icons.dart';
import 'package:buildings/widgets/tile_card_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';

class SavedView extends StatelessWidget {
  SavedView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
          child: Text(
            'Збережені',
            style: h1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              for (var i = 0; i < 15; i++)
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Slidable(
                    key: const ValueKey(0),
                    endActionPane: ActionPane(
                      extentRatio: 0.25,
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          borderRadius: BorderRadius.circular(20),
                          onPressed: (e) => {},
                          backgroundColor: Color(0xFFD34E4E),
                          icon: MyIcons.trash,
                        ),
                      ],
                    ),
                    child: Container(
                        margin: EdgeInsets.only(right: 15),
                        child: TileCardSlider(isSavedPage: true)),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
