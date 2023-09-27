import 'package:flutter/widgets.dart';
import 'package:whispers_of_tea/constant/app_theme.dart';

class AppStyle {
  AppStyle._();

  // fontFamily
  static const String _huangYouFont = 'HuangYou';
  static const String _jinShanCloudFont = 'JinShanCloud';

  /// Padding & Margin
  static const double paddingLR = 15;
  static const double paddingTB = 10;

  /// fontsize & fontweight
  static const double _poetryTitleTextSize = 40;
  static const double _poetryTextSize = 24;
  static const double _saveBtnTextSize = 20;
  static const double _makeTeaTitleSize = 48;

  /// TextStyle
  static const poetryTitleStyle = TextStyle(
    fontSize: _poetryTitleTextSize,
    fontFamily: _jinShanCloudFont,
    color: AppTheme.poetryColor,
  );
  static const poetryStyle = TextStyle(
    fontSize: _poetryTextSize,
    fontFamily: _jinShanCloudFont,
    color: AppTheme.poetryColor,
    height: 1.4,
  );
  static const makeTeaTitleStyle = TextStyle(
    fontSize: _makeTeaTitleSize,
    color: AppTheme.makeTeaTitleColor,
    fontFamily: _huangYouFont,
  );

  static const poetryBtnStyle = TextStyle(
    fontSize: _saveBtnTextSize,
    color: AppTheme.saveBtnTextColor,
  );
}
