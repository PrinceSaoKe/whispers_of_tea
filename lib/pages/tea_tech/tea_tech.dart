import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_router.dart';
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
                    height: 230,
                    label: '古法制茶',
                    imagePath: AppAssets.teaTech1,
                    route: AppRouter.ancientTech,
                    labelHeight: 50,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                  child: BottomLabelCard(
                    height: 230,
                    label: '泡茶工艺',
                    imagePath: AppAssets.teaTech2,
                    route: AppRouter.brewTeaTech,
                    labelHeight: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppTheme.ancientTechImgBgColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: const DecorationImage(
                              image: AssetImage(AppAssets.ancientTeaImg),
                              // image: AssetImage(AppAssets.brewTeaImg),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const Column(
                          children: [
                            Text('前往体验制茶步骤'),
                            SizedBox(height: 20),
                            Icon(Icons.arrow_right_alt),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const Positioned(bottom: 0, child: Navigation()),
        ],
      ),
    );
  }
}
