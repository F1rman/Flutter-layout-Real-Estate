import 'package:flutter/material.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({super.key});

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 12,
            child: Container(
              width: MediaQuery.of(context).size.width - 30,
              height: 4,
              color: Color(0xFF787880).withOpacity(.36),
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              rangeThumbShape:
                  RoundRangeSliderThumbShape(enabledThumbRadius: 14),
              trackHeight: 2,
              overlayShape: SliderComponentShape.noOverlay,
              inactiveTrackColor: Colors.grey.shade300,
            ),
            child: RangeSlider(
              activeColor: Colors.white,
              inactiveColor: Color(0xFF787880).withOpacity(0),
              values: _currentRangeValues,
              max: 100,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
