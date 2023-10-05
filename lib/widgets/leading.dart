import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_style.dart';

class Leading extends StatelessWidget {
  const Leading({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 300,
        height: 28,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.leadingImg),
            scale: 1.5,
          ),
        ),
        child: Text(text, style: AppStyle.leadingTextStyle),
      ),
    );
  }
}
