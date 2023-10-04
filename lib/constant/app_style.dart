import 'package:flutter/material.dart';
import 'package:whispers_of_tea/constant/app_theme.dart';

class AppStyle {
  AppStyle._();

  // fontFamily
  static const String _huangYouFont = 'ZhanKuQingKeHuangYouTi';
  static const String _jinShanCloudFont = 'KingsoftCloudFont';

  /// Padding & Margin
  static const double paddingLR = 15;
  static const double paddingTB = 10;

  /// fontsize & fontweight
  static const double _poetryTitleTextSize = 40;
  static const double _poetryTextSize = 24;
  static const double _saveBtnTextSize = 20;
  static const double _makeTeaTitleSize = 48;
  static const double _brewTeaTitleSize = 48;
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

  static const brewTeaTitleStyle = TextStyle(
    fontSize: _brewTeaTitleSize,
    color: AppTheme.brewTeaTitleColor,
    fontFamily: _huangYouFont,
  );

  static const poetryBtnStyle = TextStyle(
    fontSize: _saveBtnTextSize,
    color: AppTheme.saveBtnTextColor,
  );

  static const makeTeaTextStyle = TextStyle(
    fontSize: 20,
    fontFamily: _jinShanCloudFont,
    color: AppTheme.makeTeaTextColor,
  );

  static const makeTeaFinishStyle = TextStyle(
    fontSize: 33,
    fontFamily: _jinShanCloudFont,
    color: Colors.white,
    height: 1.6,
  );

  static const brewTeaTextStyle = TextStyle(
    fontSize: 24,
    fontFamily: _jinShanCloudFont,
    color: AppTheme.brewTeaTextColor,
  );

  static const leadingTextStyle = TextStyle(
    fontSize: 12,
    fontFamily: _jinShanCloudFont,
    color: AppTheme.leadingTextColor,
  );

  static const appBarTitleStyle = TextStyle(
    fontSize: 24,
    fontFamily: _jinShanCloudFont,
    color: Colors.black,
  );

  static const subSwiperLeftStyle = TextStyle(
    fontSize: 30,
    fontFamily: _huangYouFont,
    color: Colors.white,
  );

  static const subSwiperRightStyle = TextStyle(
    fontSize: 20,
    fontFamily: _huangYouFont,
    color: Colors.white,
  );

  static const teaAppreLabelStyle = TextStyle(
    fontSize: 20,
    fontFamily: _jinShanCloudFont,
    color: Colors.black,
  );

  static const teaAppreGridStyle = TextStyle(
    fontSize: 14,
    fontFamily: _huangYouFont,
    color: AppTheme.subSwiperBgColor,
  );

  static const navIconLabelStyle = TextStyle(
    fontSize: 16,
    fontFamily: _jinShanCloudFont,
    color: AppTheme.navIconLabelColor,
  );
}
