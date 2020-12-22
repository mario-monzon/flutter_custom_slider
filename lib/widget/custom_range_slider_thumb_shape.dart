import 'package:custom_slider_flutter_app/design/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRangeSliderThumbShape extends RangeSliderThumbShape {
  final double thumbRadius;

  CustomRangeSliderThumbShape({
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
    bool isEnabled,
    bool isOnTop,
    TextDirection textDirection,
    SliderThemeData sliderTheme,
    Thumb thumb,
    bool isPressed,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..color = sliderTheme.activeTrackColor
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = AppColors.backgroundColor
      ..strokeWidth = thumbRadius
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, thumbRadius * 0.8, borderPaint);
    canvas.drawCircle(center, thumbRadius * 0.9, paint);
  }
}
