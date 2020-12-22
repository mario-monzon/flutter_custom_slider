import 'package:custom_slider_flutter_app/design/app_colors.dart';
import 'package:custom_slider_flutter_app/design/text.dart';
import 'package:flutter/material.dart';

class CustomRangeSliderValueIndicatorShape
    extends RangeSliderValueIndicatorShape {
  final double min;
  final double max;
  final String upperTextLabel;

  CustomRangeSliderValueIndicatorShape({
    this.min = 0,
    this.max = 1,
    this.upperTextLabel,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete,
      {TextPainter labelPainter, double textScaleFactor}) {
    // TODO: implement getPreferredSize
    throw UnimplementedError();
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double> activationAnimation,
    Animation<double> enableAnimation,
    bool isDiscrete,
    bool isOnTop,
    TextPainter labelPainter,
    double textScaleFactor,
    Size sizeWithOverflow,
    RenderBox parentBox,
    SliderThemeData sliderTheme,
    TextDirection textDirection,
    double value,
    Thumb thumb,
  }) {
    final Canvas canvas = context.canvas;

    TextSpan spanValue = TextSpan(
      style: TextStyle(
        fontSize: TextSizes.small,
        fontWeight: FontWeight.bold,
        color: AppColors.defaultColor,
      ),
      text: getValue(value),
    );

    TextSpan spanLabel = TextSpan(
      style: TextStyle(
        fontSize: TextSizes.small,
        color: AppColors.textGrey,
      ),
      text: upperTextLabel,
    );

    TextPainter tpValue = TextPainter(
        text: spanValue,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tpValue.layout();

    TextPainter tpLabel = TextPainter(
        text: spanLabel,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tpLabel.layout();

    Offset lowerLabel =
        Offset(center.dx - (tpValue.width / 2), center.dy + tpValue.height);

    Offset upperLabel = Offset(
        center.dx - (tpLabel.width / 2), center.dy - (tpLabel.height * 2));

    tpValue.paint(canvas, lowerLabel);
    tpLabel.paint(canvas, upperLabel);
  }

  String getValue(double value) {
    return '${(min + (max - min) * value).round()} €';
  }
}
