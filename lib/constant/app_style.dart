import 'package:flutter/widgets.dart';
import 'package:whispers_of_tea/constant/app_theme.dart';

class AppStyle {
  AppStyle._();

  /// Padding & Margin
  static const double paddingLR = 15;
  static const double paddingTB = 10;

  /// fontsize & fontweight
  static const double titleTextSize = 40;
  static const double saveBtnTextSize = 20;

  /// TextStyle
  static const poetryTitleStyle = TextStyle(fontSize: titleTextSize);
  static const poetryBtnStyle = TextStyle(
    fontSize: saveBtnTextSize,
    color: AppTheme.saveBtnTextColor,
  );
}
