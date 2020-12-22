import 'package:custom_slider_flutter_app/design/app_colors.dart';
import 'package:custom_slider_flutter_app/design/text.dart';
import 'package:flutter/material.dart';

class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final double min;
  final double max;
  final String upperTextLabel;

  CustomSliderThumbCircle({
    this.min = 0,
    this.max = 1,
    this.upperTextLabel,
    @required this.thumbRadius,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double> activationAnimation,
    Animation<double> enableAnimation,
    bool isDiscrete,
    TextPainter labelPainter,
    RenderBox parentBox,
    SliderThemeData sliderTheme,
    TextDirection textDirection,
    double value,
    double textScaleFactor,
    Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..color = sliderTheme.activeTrackColor
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = AppColors.backgroundColor
      ..strokeWidth = thumbRadius
      ..style = PaintingStyle.stroke;

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

    canvas.drawCircle(center, thumbRadius * 0.8, borderPaint);
    canvas.drawCircle(center, thumbRadius * 0.9, paint);
    tpValue.paint(canvas, lowerLabel);
    tpLabel.paint(canvas, upperLabel);
  }

  String getValue(double value) {
    return '${(min + (max - min) * value).round()} €';
  }
}
