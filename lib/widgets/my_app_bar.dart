import 'package:flutter/material.dart';

/// 自定义的AppBar
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key, this.title = '', this.height = kToolbarHeight});

  final String title;
  final double height;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      leading: _getLeading(),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      foregroundColor: Colors.black,
    );
  }

  _getLeading() {
    //TODO 返回按钮
  }

  @override
  Size get preferredSize => Size(double.infinity, height);
}
