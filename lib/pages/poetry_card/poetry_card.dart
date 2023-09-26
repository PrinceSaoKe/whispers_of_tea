import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whispers_of_tea/constant/app_assets.dart';
import 'package:whispers_of_tea/constant/app_theme.dart';
import 'package:whispers_of_tea/constant/poetry.dart';
import 'package:whispers_of_tea/widgets/save_button.dart';

class PoetryCardPage extends StatefulWidget {
  const PoetryCardPage({super.key});

  @override
  State<PoetryCardPage> createState() => _PoetryCardPageState();
}

class _PoetryCardPageState extends State<PoetryCardPage> {
  final int _cardNumber = 2; // 总的卡片数量
  int currCard = 1; // 要显示的卡片id
  String title = ''; // 诗的题目
  String content = ''; // 诗的内容

  @override
  void initState() {
    // 随机取一张卡片的id
    currCard = Random().nextInt(_cardNumber) + 1;

    // 根据id选择对应的诗
    title = Poetry.poetryList[currCard - 1]['title'] ?? '';
    content = Poetry.poetryList[currCard - 1]['content'] ?? '';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _getBackground(),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 80, 30, 120),
            child: _getCard(),
          ),
          Positioned(
            bottom: 40,
            left: 30,
            right: 30,
            child: SaveButton(
              onTap: () {
                _saveImg();
              },
            ),
          ),

          // 茶叶装饰
          Positioned(top: 60, left: 10, child: Image.asset(AppAssets.teaImg)),
          Positioned(top: 300, right: 10, child: Image.asset(AppAssets.teaImg)),
        ],
      ),
    );
  }

  /// 背景图片
  _getBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            '${AppAssets.poetryCardPath}/${currCard}_poetry_bg.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _getCard() {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.poetryCardBgColor,
        borderRadius: const BorderRadius.all(Radius.circular(33)),
        border: Border.all(color: AppTheme.poetryCardBorderColor, width: 2),
      ),
      child: Column(
        children: [
          Text(title, textAlign: TextAlign.center),
          Text(content, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  /// 将诗词卡片保存到相册
  _saveImg() {
    //TODO 保存图片
  }
}
