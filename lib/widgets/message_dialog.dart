import 'package:flutter/material.dart';

/// 自定义的提示弹窗
///
/// barrierDismissible 参数：点击灰色背景的时候是否消失弹出框
getMessageDialog(
  BuildContext context, {
  String title = '',
  String text = '',
  bool barrierDismissible = false,
}) {
  return showDialog(
    barrierDismissible: barrierDismissible, // 表示点击灰色背景的时候是否消失弹出框
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: Text(text),
        actions: <Widget>[
          TextButton(
            child: const Text("确定"),
            onPressed: () {
              Navigator.pop(context, "确定");
            },
          ),
        ],
      );
    },
  );
}
