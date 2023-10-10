import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/widgets/send_pin_button.dart';

class LoginTextfield extends StatelessWidget {
  const LoginTextfield({
    super.key,
    this.label = '',
    this.controller,
    this.isPinTextfield = false,
  });

  final String label;
  final TextEditingController? controller;
  final bool isPinTextfield;

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
            suffixIcon: isPinTextfield ? const SendPinButton() : null,
          ),
        ),
      ],
    );
  }
}
