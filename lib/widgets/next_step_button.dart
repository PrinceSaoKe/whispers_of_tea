import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';

class NextStepButton extends StatelessWidget {
  const NextStepButton({super.key, this.onTap});

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(140, 56),
        backgroundColor: AppTheme.nextStepButtonBgColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
      ),
      onPressed: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: const Text('下一步', style: AppStyle.nextStepText),
    );
  }
}
