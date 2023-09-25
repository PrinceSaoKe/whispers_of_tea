import 'package:flutter/material.dart';
import 'package:whispers_of_tea/constant/app_style.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('开始', style: AppStyle.poetryTitleStyle),
    );
  }
}
