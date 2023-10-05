import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_router.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/constant/tea_info.dart';
import 'package:whispers_of_tea/widgets/gradient_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';
import 'package:whispers_of_tea/widgets/navigation.dart';

class TeaSpeciesPage extends StatelessWidget {
  const TeaSpeciesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: '种类分布'),
      body: Stack(
        children: [
          const GradientBackground(),
          GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            mainAxisSpacing: 10,
            children: [
              _getTeaCard('绿茶', AppAssets.greenTea, 0),
              _getTeaCard('红茶', AppAssets.redTea, 1),
              _getTeaCard('黄茶', AppAssets.yellowTea, 2),
              _getTeaCard('白茶', AppAssets.whiteTea, 3),
              _getTeaCard('黑茶', AppAssets.blackTea, 4),
              _getTeaCard('乌龙茶', AppAssets.oolongTea, 5),
            ],
          ),
          const Positioned(bottom: 0, child: Navigation()),
        ],
      ),
    );
  }

  _getTeaCard(String label, String imagePath, int index) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed(
              AppRouter.teaIntroduction,
              arguments: TeaInfo.teaInfoList[index],
            );
          },
          child: SizedBox(
            width: 130,
            height: 130,
            child: Image.asset(imagePath, fit: BoxFit.fill),
          ),
        ),
        Text(label, style: AppStyle.teaSpeciesLabelStyle),
      ],
    );
  }
}
