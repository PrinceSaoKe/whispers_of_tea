import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_net.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/model/simple_model.dart';
import 'package:whispers_of_tea/widgets/message_dialog.dart';
import 'package:whispers_of_tea/widgets/send_pin_button.dart';

class LoginTextfield extends StatelessWidget {
  const LoginTextfield({
    super.key,
    this.label = '',
    this.controller,
    this.isPinTextfield = false,
    this.hideText = false,
    this.email,
  });

  final String label;
  final TextEditingController? controller;
  final bool isPinTextfield;
  final bool hideText;
  final String? email;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(label, style: AppStyle.loginInputLabelText),
        ),
        TextField(
          obscureText: hideText, // 输入密码模式
          decoration: InputDecoration(
            filled: true,
            fillColor: AppTheme.loginInputBgColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(style: BorderStyle.none),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(style: BorderStyle.none),
            ),
            suffixIcon: isPinTextfield
                ? SendPinButton(
                    onTap: () async {
                      SimpleModel model =
                          await AppNet.sendPin(email: email ?? '');
                      Get.dialog(MessageDialog(title: model.msg));
                    },
                  )
                : null,
          ),
          onChanged: (text) {
            controller?.text = text;
          },
        ),
      ],
    );
  }
}
