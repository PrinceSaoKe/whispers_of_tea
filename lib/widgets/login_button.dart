import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_style.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.text,
    this.onTap,
    this.backgroundColor,
  });

  final String text;
  final Function? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(250, 50),
          backgroundColor: backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        onPressed: () {
          if (onTap != null) {
            onTap!();
          }
        },
        child: Text(text, style: AppStyle.loginButtonText),
      ),
    );
  }
}
