import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const int _themeColorValue = 0xFFBCE4CD;

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
  static const Color makeTeaTextColor = Color(0xFF094F00);
  static const Color brewTeaTitleColor = Color(0xFF002B11);
  static const Color brewTeaTextColor = Color(0xFF000000);
  static const Color leadingTextColor = Color(0xFF547A64);
  static const Color subSwiperBgColor = Color(0xFF094F00);
  static const Color appBarBgColor = Color.fromRGBO(104, 166, 113, 0.44);
  static const Color teaAppreGridBgColor = Color.fromRGBO(245, 255, 246, 0.71);
  static const Color navIconLabelColor = Color(0xFF547A64);
  static const Color navCircleBgColor = Color(0xFFD9E6C8);
  static const Color teaInfoHeadBorderColor = Color(0xFF487555);
  static const Color teaStoryContainerBgColor =
      Color.fromRGBO(195, 214, 169, 0.37);
  static const Color loginCheckBoxColor = Color(0xFF073002);
  static const Color loginButtonDarkColor = Color(0xFF144019);
  static const Color loginButtonLightColor = Color(0x62144019);
  static const Color loginTextColor = Color(0xFF093802);
  static const Color loginInputBgColor = Color(0x7E385C3C);
  static const Color loginPinButtonColor = Color(0xFF264023);

  /// TeaInfo主题色
  static const Color greenTeaThemeColor = Color(0xFF6DA67E);
  static const Color redTeaThemeColor = Color(0xFF832817);
  static const Color yellowTeaThemeColor = Color(0xFFEFCF7B);
  static const Color whiteTeaThemeColor = Color.fromARGB(255, 174, 174, 174);
  static const Color blackTeaThemeColor = Color(0xFF303030);
  static const Color oolongTeaThemeColor = Color(0xFF1CB27C);

  /// 渐变色
  static const LinearGradient makeTeaCircleColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(169, 231, 163, 1),
      Color.fromRGBO(118, 196, 151, 0.01),
    ],
  );

  static const LinearGradient makeTeaFinishColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(32, 115, 9, 1),
      Color.fromRGBO(32, 115, 9, 1),
      Color.fromRGBO(192, 250, 199, 1),
      Color.fromRGBO(85, 168, 71, 1),
      Color.fromRGBO(32, 115, 9, 1),
      Color.fromRGBO(32, 115, 9, 1),
      Color.fromRGBO(32, 115, 9, 1),
    ],
  );

  static const LinearGradient gradientBgColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      appBarBgColor,
      Color.fromRGBO(141, 214, 151, 0.22),
      Color.fromRGBO(133, 201, 142, 0.1),
    ],
  );

  static const LinearGradient navIconBgColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(217, 230, 200, 1),
      Color.fromRGBO(255, 255, 255, 1),
    ],
  );

  static const LinearGradient loginBgColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(11, 59, 16, 0.38),
      Color.fromRGBO(11, 59, 16, 0.16),
    ],
  );

  /// 主题
  static ThemeData themeData = ThemeData(primarySwatch: themeColor);

  /// 习俗模块里的小字颜色
  static const Color etiquetteTextColor = Color(0xFF1C3002);
}
