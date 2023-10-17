import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_router.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/widgets/bottom_label_card.dart';
import 'package:whispers_of_tea/widgets/image_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

class TeaTechPage extends StatelessWidget {
  const TeaTechPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ImageBackground(),
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView(
              children: [
                const MyAppBar(title: '茶叶工艺'),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                  child: BottomLabelCard(
                    height: 200,
                    label: '古法制茶',
                    imagePath: AppAssets.teaTech1,
                    route: AppRouter.ancientTech,
                    labelHeight: 50,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                  child: BottomLabelCard(
                    height: 200,
                    label: '泡茶工艺',
                    imagePath: AppAssets.teaTech2,
                    route: AppRouter.brewTeaTech,
                    labelHeight: 50,
                  ),
                ),
                _getToMakeTeaCard(),
                _getToBrewTeaCard(),
              ],
            ),
          ),
          // const Positioned(bottom: 0, child: Navigation()),
        ],
      ),
    );
  }

  _getToMakeTeaCard() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRouter.makeTea);
        },
        child: Container(
          padding: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: AppTheme.ancientTechImgBgColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.ancientTeaImg),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Column(
                children: [
                  Text('前往体验\n    制茶步骤', style: AppStyle.ancientTechImgText),
                  SizedBox(height: 10),
                  Icon(
                    Icons.chevron_right,
                    color: AppTheme.ancientTechImgTextColor,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getToBrewTeaCard() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRouter.brewTea);
        },
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: AppTheme.brewTeaImgTextColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            children: [
              Image.asset(AppAssets.brewTeaImg),
              const SizedBox(width: 5),
              const Text('前往体验泡茶步骤', style: AppStyle.ancientTechImgText),
              const Icon(
                Icons.chevron_right,
                color: AppTheme.ancientTechImgTextColor,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
