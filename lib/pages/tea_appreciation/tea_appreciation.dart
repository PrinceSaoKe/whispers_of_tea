import 'package:flutter/material.dart';
import 'package:whispers_of_tea/addons/swiper.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/widgets/gradient_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';
import 'package:whispers_of_tea/widgets/navigation.dart';

class TeaApprePage extends StatefulWidget {
  const TeaApprePage({super.key});

  @override
  State<TeaApprePage> createState() => _TeaApprePageState();
}

class _TeaApprePageState extends State<TeaApprePage> {
  List<Widget> swiperList = [
    Image.asset(AppAssets.teaAppreSwiper1),
    Image.asset(AppAssets.teaAppreSwiper2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackground(),
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView(
              children: [
                const MyAppBar(title: '茶语鉴赏', leadingText: '主页面'),
                DefaultSwiper(height: 120, dataList: swiperList),
                _getSubSwiper(),
                _getLabel('今日推荐'),
                _getGridRecommend(),
              ],
            ),
          ),
          const Positioned(bottom: 0, child: Navigation()),
        ],
      ),
    );
  }

  _getSubSwiper() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.subSwiperBgColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Container(
              width: 145,
              height: 70,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.subSwiperLeft),
                ),
              ),
              child: const Text('闽茶', style: AppStyle.subSwiperLeftStyle),
            ),
            Expanded(
              child: Container(
                height: 70,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.subSwiperRight),
                    fit: BoxFit.fill,
                  ),
                ),
                child: const Text(
                  '武夷春暖月初圆，\n采摘新芽献地仙。',
                  style: AppStyle.subSwiperRightStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(label, style: AppStyle.teaAppreLabelStyle),
    );
  }

  _getGridRecommend() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(overscroll: false),
        child: GridView.count(
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 1.5,
          children: [
            _getRecommendCard('西湖龙井', AppAssets.teaAppreGrid1),
            _getRecommendCard('雁荡毛峰', AppAssets.teaAppreGrid2),
            _getRecommendCard('敬亭绿雪', AppAssets.teaAppreGrid3),
            _getRecommendCard('荔枝红茶', AppAssets.teaAppreGrid4),
          ],
        ),
      ),
    );
  }

  _getRecommendCard(String text, String imagePath) {
    return Container(
      width: 180,
      height: 100,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill),
      ),
      child: Container(
        width: 180,
        height: 26,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppTheme.teaAppreGridBgColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Text(text, style: AppStyle.teaAppreGridStyle),
      ),
    );
  }
}
