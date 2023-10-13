import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_router.dart';
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
              children: const [
                MyAppBar(title: '茶叶工艺'),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                  child: BottomLabelCard(
                    height: 230,
                    label: '古法制茶',
                    imagePath: AppAssets.teaTech1,
                    route: AppRouter.ancientTech,
                    labelHeight: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                  child: BottomLabelCard(
                    height: 230,
                    label: '泡茶工艺',
                    imagePath: AppAssets.teaTech2,
                    route: AppRouter.brewTeaTech,
                    labelHeight: 50,
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
