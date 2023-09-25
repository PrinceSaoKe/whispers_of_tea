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

  /// 主题
  static ThemeData themeData = ThemeData(
    primarySwatch: themeColor,
  );
}
