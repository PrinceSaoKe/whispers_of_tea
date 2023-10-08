import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';

class BottomLabelCard extends StatelessWidget {
  const BottomLabelCard({
    super.key,
    this.width = double.infinity,
    this.height = double.infinity,
    required this.label,
    required this.imagePath,
    this.route,
    this.labelHeight = 26,
  });

  final double width;
  final double height;
  final String label;
  final String imagePath;
  final String? route;
  final double labelHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (route != null) {
          Get.toNamed(route!);
        }
      },
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill),
        ),
        child: Container(
          width: width,
          height: labelHeight,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: AppTheme.teaAppreGridBgColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Text(label, style: AppStyle.teaAppreGridStyle),
        ),
      ),
    );
  }
}
