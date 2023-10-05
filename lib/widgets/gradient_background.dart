import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_theme.dart';

/// 渐变背景
class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(gradient: AppTheme.gradientBgColor),
    );
  }
}
