import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_style.dart';

/// 发送验证码的按钮
class SendPinButton extends StatelessWidget {
  const SendPinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 7),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        child: const Text('获取验证码', style: AppStyle.loginPinButtonText),
      ),
    );
  }
}
