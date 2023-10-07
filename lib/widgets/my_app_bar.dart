import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/widgets/leading.dart';

/// 自定义的AppBar
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.title = '',
    this.height = kToolbarHeight,
    this.leadingText = '返回',
    this.backgroundColor = Colors.transparent,
  });

  final String title;
  final double height;
  final String leadingText;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppStyle.appBarTitleStyle),
      centerTitle: true,
      leading: Leading(text: leadingText),
      leadingWidth: 100,
      automaticallyImplyLeading: false, // 是否需要自动生成leading
      backgroundColor: backgroundColor,
      shadowColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.black,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, height);
}
