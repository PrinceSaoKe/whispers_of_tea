import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_router.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/widgets/nav_icon.dart';

/// 导航栏
class Navigation extends StatelessWidget {
  const Navigation({super.key, this.needBgImg = true});

  final bool needBgImg;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 170,
      width: width,
      child: Stack(
        children: [
          _getCircleBackground(),
          needBgImg ? _getImageBackground() : const SizedBox(),
          Positioned(
            left: 10,
            bottom: 15,
            child: NavigationIcon(
              label: '历史',
              imagePath: AppAssets.navLiShi,
              onTap: () {
                Get.toNamed(AppRouter.teaHistory);
              },
            ),
          ),
          Positioned(
            left: 70,
            bottom: 55,
            child: NavigationIcon(
              label: '种类',
              imagePath: AppAssets.navZhongLei,
              onTap: () {
                Get.toNamed(AppRouter.teaSpecies);
              },
            ),
          ),
          Positioned(
            left: width / 2 - 32,
            bottom: 65,
            child: const NavigationIcon(
              label: '工艺',
              imagePath: AppAssets.navGongYi,
              radius: 32,
            ),
          ),
          Positioned(
            right: 70,
            bottom: 55,
            child: NavigationIcon(
              label: '习俗',
              imagePath: AppAssets.navXiSu,
              onTap: () {
                Get.toNamed(AppRouter.teaCultureEtiquette);
              },
            ),
          ),
          Positioned(
            right: 10,
            bottom: 15,
            child: NavigationIcon(
              label: '故事',
              imagePath: AppAssets.navGuShi,
              onTap: () {
                Get.toNamed(AppRouter.teaStory);
              },
            ),
          ),
        ],
      ),
    );
  }

  _getCircleBackground() {
    return Positioned(
      bottom: -380,
      left: -70,
      right: -70,
      child: Container(
        width: 500,
        height: 500,
        decoration: BoxDecoration(
          color: AppTheme.navCircleBgColor,
          borderRadius: BorderRadius.circular(250),
        ),
      ),
    );
  }

  _getImageBackground() {
    return Positioned(
      bottom: -40,
      left: 50,
      right: 50,
      child: Image.asset(AppAssets.navTreeImg),
    );
  }
}
