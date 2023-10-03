import 'package:flutter/material.dart';
import 'package:whispers_of_tea/addons/swiper.dart';
import 'package:whispers_of_tea/constant/app_assets.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

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
      appBar: const MyAppBar(title: '茶语鉴赏'),
      body: Stack(
        children: [
          ListView(
            children: [
              MySwiper(height: 120, dataList: swiperList),
            ],
          ),
          Positioned(bottom: 0, child: _getNavgation()),
        ],
      ),
    );
  }

  _getNavgation() {
    //TODO 底部导航
  }
}
