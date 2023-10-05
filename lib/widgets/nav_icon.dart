import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';

/// 导航栏icon
class NavigationIcon extends StatelessWidget {
  const NavigationIcon({
    super.key,
    required this.label,
    required this.imagePath,
    this.radius = 25,
    this.onTap,
  });

  final String label;
  final String imagePath;
  final double radius;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Column(
        children: [
          Container(
            width: radius * 2,
            height: radius * 2,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(blurRadius: 5, color: Colors.black26)
              ],
              borderRadius: BorderRadius.circular(radius),
              gradient: AppTheme.navIconBgColor,
            ),
            child: Image.asset(imagePath),
          ),
          const SizedBox(height: 5),
          Text(label, style: AppStyle.navIconLabelStyle),
        ],
      ),
    );
  }
}
