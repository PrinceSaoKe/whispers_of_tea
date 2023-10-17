import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/addons/swiper.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_router.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/constant/tea_info.dart';
import 'package:whispers_of_tea/widgets/bottom_label_card.dart';
import 'package:whispers_of_tea/widgets/gradient_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

class TeaSpeciesPage extends StatefulWidget {
  const TeaSpeciesPage({super.key});

  @override
  State<TeaSpeciesPage> createState() => _TeaSpeciesPageState();
}

class _TeaSpeciesPageState extends State<TeaSpeciesPage> {
  final List<Widget> dataList = [
    const Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: BottomLabelCard(
        label: '历史发展',
        imagePath: AppAssets.teaHistory1,
        route: AppRouter.teaHistory,
      ),
    ),
    const Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: BottomLabelCard(
        label: '档案故事',
        imagePath: AppAssets.teaHistory7,
        route: AppRouter.teaStory,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackground(),
          Positioned(
              bottom: -60, right: -30, child: Image.asset(AppAssets.girlImg)),
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView(
              shrinkWrap: true,
              children: [
                const MyAppBar(title: '茶语百科'),
                DefaultSwiper(height: 100, dataList: dataList),
                const SizedBox(height: 20),
                GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  childAspectRatio: 0.94,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    _getTeaCard('绿茶', AppAssets.greenTea, 0),
                    _getTeaCard('白茶', AppAssets.whiteTea, 1),
                    _getTeaCard('黄茶', AppAssets.yellowTea, 2),
                    _getTeaCard('乌龙茶', AppAssets.oolongTea, 3),
                    _getTeaCard('红茶', AppAssets.redTea, 4),
                    _getTeaCard('黑茶', AppAssets.blackTea, 5),
                  ],
                ),
                // const Row(
                //   children: [
                //     SizedBox(width: 20),
                //     BottomLabelCard(
                //       width: 200,
                //       height: 100,
                //       label: '历史发展',
                //       imagePath: AppAssets.teaHistory1,
                //       route: AppRouter.teaHistory,
                //     ),
                //     Expanded(child: SizedBox())
                //   ],
                // ),
                // const Row(
                //   children: [
                //     SizedBox(width: 20),
                //     BottomLabelCard(
                //       width: 200,
                //       height: 100,
                //       label: '档案故事',
                //       imagePath: AppAssets.teaHistory1,
                //       route: AppRouter.teaStory,
                //     ),
                //     Expanded(child: SizedBox())
                //   ],
                // ),
              ],
            ),
          ),
          // const Positioned(bottom: 0, child: Navigation()),
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
