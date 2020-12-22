import 'package:custom_slider_flutter_app/design/app_colors.dart';
import 'package:custom_slider_flutter_app/design/text.dart';
import 'package:custom_slider_flutter_app/widget/custom_slider_thumb_circle.dart';
import 'package:flutter/material.dart';

mixin AppTheme {
  /// Default theme of the app
  static final SliderThemeData main = SliderThemeData(
    trackHeight: 1.0,
    activeTrackColor: AppColors.ikeaBlue,
    inactiveTrackColor: AppColors.inactiveGrey,
    showValueIndicator: ShowValueIndicator.always,
    rangeThumbShape: RoundRangeSliderThumbShape(
      enabledThumbRadius: TextSizes.small,
      disabledThumbRadius: TextSizes.small,
    ),
    overlayColor: AppColors.backgroundColor,
    thumbColor: AppColors.ikeaBlue,
    valueIndicatorColor: Colors.transparent,
    valueIndicatorTextStyle: TextStyle(
        color: AppColors.defaultColor,
        fontSize: TextSizes.small,
        fontWeight: FontWeight.bold,
        fontFamily: 'Noto Sans Ikea'),
  );

  static final SliderThemeData custom = main.copyWith(
    thumbShape: CustomSliderThumbCircle(thumbRadius: TextSizes.small),
    valueIndicatorShape: CustomSliderThumbCircle(
      thumbRadius: TextSizes.small,
      min: 1,
      max: 100,
    ),
    showValueIndicator: ShowValueIndicator.onlyForContinuous,
    overlayShape: SliderComponentShape.noOverlay,
  );

  static final SliderThemeData other = main.copyWith(
    showValueIndicator: ShowValueIndicator.always,
    overlayShape: SliderComponentShape.noOverlay,
  );
}
