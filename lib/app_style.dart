import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_theme.dart';

class AppStyle {
  AppStyle._();

  // fontFamily
  static const String huangYouFont = 'ZhanKuQingKeHuangYouTi';
  static const String siYuanHeiTiFont = 'SiYuanHeiTi';
  static const String jinShanCloudFont = 'KingsoftCloudFont';

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
    fontFamily: jinShanCloudFont,
    color: AppTheme.poetryColor,
  );
  static const poetryStyle = TextStyle(
    fontSize: _poetryTextSize,
    fontFamily: jinShanCloudFont,
    color: AppTheme.poetryColor,
    height: 1.4,
  );
  static const makeTeaTitleStyle = TextStyle(
    fontSize: _makeTeaTitleSize,
    color: AppTheme.makeTeaTitleColor,
    fontFamily: huangYouFont,
  );

  static const brewTeaTitleStyle = TextStyle(
    fontSize: _brewTeaTitleSize,
    color: AppTheme.brewTeaTitleColor,
    fontFamily: huangYouFont,
  );

  static const poetryBtnStyle = TextStyle(
    fontSize: _saveBtnTextSize,
    color: AppTheme.saveBtnTextColor,
  );

  static const makeTeaTextStyle = TextStyle(
    fontSize: 20,
    fontFamily: jinShanCloudFont,
    color: AppTheme.makeTeaTextColor,
  );

  static const makeTeaFinishStyle = TextStyle(
    fontSize: 33,
    fontFamily: jinShanCloudFont,
    color: Colors.white,
    height: 1.6,
  );

  static const brewTeaTextStyle = TextStyle(
    fontSize: 24,
    fontFamily: jinShanCloudFont,
    color: AppTheme.brewTeaTextColor,
  );

  static const leadingTextStyle = TextStyle(
    fontSize: 12,
    fontFamily: jinShanCloudFont,
    color: AppTheme.leadingTextColor,
  );

  static const appBarTitleStyle = TextStyle(
    fontSize: 24,
    fontFamily: jinShanCloudFont,
    color: Colors.black,
  );

  static const subSwiperLeftStyle = TextStyle(
    fontSize: 30,
    fontFamily: huangYouFont,
    color: Colors.white,
  );

  static const subSwiperRightStyle = TextStyle(
    fontSize: 20,
    fontFamily: huangYouFont,
    color: Colors.white,
  );

  static const teaAppreLabelStyle = TextStyle(
    fontSize: 20,
    fontFamily: jinShanCloudFont,
    color: Colors.black,
  );

  static const teaAppreGridStyle = TextStyle(
    fontSize: 14,
    fontFamily: huangYouFont,
    color: AppTheme.subSwiperBgColor,
  );

  static const navIconLabelStyle = TextStyle(
    fontSize: 16,
    fontFamily: jinShanCloudFont,
    color: AppTheme.navIconLabelColor,
  );

  static const teaSpeciesLabelStyle = TextStyle(
    fontSize: 18,
    fontFamily: siYuanHeiTiFont,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static const teaIntroNameStyle = TextStyle(
    fontSize: 24,
    fontFamily: siYuanHeiTiFont,
    color: Colors.white,
  );

  static const teaIntroTemperaStyle = TextStyle(
    fontSize: 18,
    fontFamily: siYuanHeiTiFont,
  );

  static const teaIntroWeightStyle = TextStyle(
    fontSize: 14,
    fontFamily: siYuanHeiTiFont,
  );

  static const teaIntroDescStyle = TextStyle(
    fontSize: 16,
    fontFamily: siYuanHeiTiFont,
  );

  static const teaIntroLabelStyle = TextStyle(
    fontSize: 16,
    fontFamily: siYuanHeiTiFont,
    fontWeight: FontWeight.bold,
    height: 2,
  );

  static const teaIntroTextStyle = TextStyle(
    fontSize: 14,
    fontFamily: siYuanHeiTiFont,
    height: 2,
  );

  static const teaHistoryTextStyle = TextStyle(
    fontSize: 18,
    fontFamily: siYuanHeiTiFont,
  );

  static const teaHistoryLabelStyle = TextStyle(
    fontSize: 20,
    fontFamily: huangYouFont,
  );
}
