import 'package:flutter/material.dart';
import 'package:whispers_of_tea/constant/app_assets.dart';
import 'package:whispers_of_tea/widgets/nav_icon.dart';

/// 导航栏
class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 170,
      width: width,
      child: Stack(
        children: [
          const Positioned(
            left: 10,
            bottom: 15,
            child: NavigationIcon(label: '历史', imagePath: AppAssets.navLiShi),
          ),
          const Positioned(
            left: 70,
            bottom: 70,
            child:
                NavigationIcon(label: '种类', imagePath: AppAssets.navZhongLei),
          ),
          Positioned(
            left: width / 2 - 32,
            bottom: 80,
            child: const NavigationIcon(
              label: '工艺',
              imagePath: AppAssets.navGongYi,
              radius: 32,
            ),
          ),
          const Positioned(
            right: 70,
            bottom: 70,
            child: NavigationIcon(label: '习俗', imagePath: AppAssets.navXiSu),
          ),
          const Positioned(
            right: 10,
            bottom: 15,
            child: NavigationIcon(label: '故事', imagePath: AppAssets.navGuShi),
          ),
        ],
      ),
    );
  }
}
