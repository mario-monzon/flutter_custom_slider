import 'package:flutter/material.dart';

mixin AppColors {
  /// The default color to everything painted in the app:
  /// Texts, icons, effects, highlights
  static const Color defaultColor = Colors.black;

  /// The default color for backgrounds in the app
  static const Color backgroundColor = Colors.white;

  /// The default color for disabled stuff
  static const Color disabledColor = Colors.black54;

  /// The default color for dividers, lines, outlines, etc.
  static const Color dividerColor = Colors.black54;

  /// The default color for dividers, lines, outlines, etc.
  static const Color selectedColor = Color(0xFFCCCCCC);

  /// The default color for touchable highlight stuff
  static const Color touchableColor = Color.fromARGB(255, 64, 122, 177);

  /// A color for warnings
  static const Color warning = Color(0xFFFAF3E5);

  /// A color for warnings, darker
  static const Color warningDark = Color(0xFFFFD4B8);

  // ignore: public_member_api_docs
  static const Color ok = Color(0xFF0A8A00);
  // ignore: public_member_api_docs
  static const Color error = Color(0xFFD52F23);

  static const Color overlayedBackgroundColor = Colors.black45;

  static const Color ikeaBlue = Color(0xFF407AB1);

  static const Color inactiveGrey = Color(0xFFDEE2E6);

  static const Color textGrey = Color(0xFF6C757D);
}
