import 'package:flutter/widgets.dart';

class AppStyle {
  AppStyle._();

  /// Padding & Margin
  static const double paddingLR = 15;
  static const double paddingTB = 10;

  /// fontsize & fontweight
  static const double buttonTextSize = 18;
  static const double poetryTitleTextSize = 40;
  static const double poetryTextSize = 24;

  /// TextStyle
  static const poetryTitleStyle = TextStyle(fontSize: poetryTitleTextSize);
  static const poetryStyle = TextStyle(fontSize: poetryTextSize);
}
