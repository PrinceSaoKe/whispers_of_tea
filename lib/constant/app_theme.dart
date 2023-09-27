import 'dart:math';

import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const int _themeColorValue = 0xFFFF0000;

  /// 主题颜色
  static const MaterialColor themeColor = MaterialColor(
    _themeColorValue,
    <int, Color>{
      50: Color(0xFFFF0000),
      100: Color(0xFFFF0080),
      200: Color(0xFFFF00FF),
      300: Color(0xFF8000FF),
      400: Color(0xFF0000FF),
      500: Color(0xFF0080FF),
      600: Color(0xFF00FFFF),
      700: Color(0xFF00FF80),
      800: Color(0xFF00FF00),
      900: Color(0xFF80FF00),
    },
  );

  /// 配色
  static const Color poetryCardBgColor = Color(0xA2E8FAE6);
  static const Color poetryCardBorderColor = Color(0xFF5D7A6A);
  static const Color poetryColor = Color(0xFF1A472B);
  static const Color saveBtnTextColor = Color(0xFF5C806B);
  static const Color saveBtnBgColor = Color(0xCCDCF5E6);
  static const Color makeTeaBgColor = Color(0x8288B399);
  static const Color makeTeaTitleColor = Color(0xFF1A6337);

  /// 渐变色
  static const LinearGradient makeTeaCircleColor = LinearGradient(
    colors: [
      Color.fromRGBO(169, 231, 163, 1),
      Color.fromRGBO(118, 196, 151, 0.01),
    ],
    transform: GradientRotation(pi / 2), // 顺时针旋转 π/2
  );

  /// 主题
  static ThemeData themeData = ThemeData(primarySwatch: themeColor);
}
