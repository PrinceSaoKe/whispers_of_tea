import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key, this.onTap});

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (onTap != null) onTap!();
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(349, 58),
        backgroundColor: AppTheme.saveBtnBgColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(29)),
        ),
      ),
      child: const Text('保存到手机', style: AppStyle.poetryBtnStyle),
    );
  }
}
