import 'package:custom_slider_flutter_app/design/app_colors.dart';
import 'package:custom_slider_flutter_app/design/text.dart';
import 'package:flutter/material.dart';

import 'custom_slider_thumb_circle.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _value = 0;
  final double _min = 0;
  final double _max = 100;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SliderTheme(
          // data: AppTheme.custom,
          data: SliderThemeData(
            activeTrackColor: AppColors.ikeaBlue,
            inactiveTrackColor: AppColors.inactiveGrey,
            overlayShape: SliderComponentShape.noOverlay,
            thumbShape: CustomSliderThumbCircle(
                thumbRadius: TextSizes.small,
                min: _min,
                max: _max,
                upperTextLabel: 'Min.'),
          ),
          child: Slider(
            value: _value,
            min: _min,
            max: _max,
            onChanged: (value) {
              setState(() {
                _value = value;
                print('${_value.toInt()}');
              });
            },
          ),
        ),
      ),
    );
  }
}
