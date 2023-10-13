import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_router.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/widgets/nav_icon.dart';

/// 导航栏
class Navigation extends StatelessWidget {
  const Navigation({super.key, this.needBgImg = true, this.showIcons = true});

  final bool needBgImg;
  final bool showIcons;

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
          showIcons
              ? Positioned(
                  left: 20,
                  bottom: 30,
                  child: NavigationIcon(
                    label: '茶风茗俗',
                    imagePath: AppAssets.navLiShi,
                    onTap: () {
                      Get.toNamed(AppRouter.teaCultureEtiquette);
                    },
                  ),
                )
              : const SizedBox(),
          showIcons
              ? Positioned(
                  left: 100,
                  bottom: 65,
                  child: NavigationIcon(
                    label: '茶语百科',
                    imagePath: AppAssets.navGuShi,
                    onTap: () {
                      Get.toNamed(AppRouter.teaSpecies);
                    },
                  ),
                )
              : const SizedBox(),
          // showIcons
          //     ? Positioned(
          //         left: width / 2 - 32,
          //         bottom: 65,
          //         child: NavigationIcon(
          //           label: '工艺',
          //           imagePath: AppAssets.navGongYi,
          //           radius: 32,
          //           onTap: () {
          //             Get.toNamed(AppRouter.teaTech);
          //           },
          //         ),
          //       )
          //     : const SizedBox(),
          showIcons
              ? Positioned(
                  right: 100,
                  bottom: 65,
                  child: NavigationIcon(
                    label: '茶叶工艺',
                    imagePath: AppAssets.navXiSu,
                    onTap: () {
                      Get.toNamed(AppRouter.teaTech);
                    },
                  ),
                )
              : const SizedBox(),
          showIcons
              ? Positioned(
                  right: 20,
                  bottom: 30,
                  child: NavigationIcon(
                    label: '茶语橱窗',
                    imagePath: AppAssets.navZhongLei,
                    onTap: () {
                      Get.toNamed(AppRouter.showcase);
                    },
                  ),
                )
              : const SizedBox(),
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
          boxShadow: const [BoxShadow(blurRadius: 7)],
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
