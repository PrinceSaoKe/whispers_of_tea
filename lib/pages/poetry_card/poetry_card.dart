import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:whispers_of_tea/constant/app_assets.dart';
import 'package:whispers_of_tea/constant/app_theme.dart';
import 'package:whispers_of_tea/constant/poetry.dart';
import 'package:whispers_of_tea/widgets/message_dialog.dart';
import 'package:whispers_of_tea/widgets/save_button.dart';

import '../../constant/app_style.dart';

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

  /// 更换诗词卡片
  _refreshCard() {
    setState(() {
      currCard = currCard % _cardNumber + 1;
      title = Poetry.poetryList[currCard - 1]['title'] ?? '';
      content = Poetry.poetryList[currCard - 1]['content'] ?? '';
    });
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
                _saveLocalImage();
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
      child: GestureDetector(
        onTap: _refreshCard,
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppStyle.poetryTitleStyle,
            ),
            Text(
              content,
              textAlign: TextAlign.center,
              style: AppStyle.poetryStyle,
            ),
          ],
        ),
      ),
    );
  }

  /// 保存卡片到相册方法
  Future<void> _saveLocalImage() async {
    // 构建图片的路径
    String imagePath =
        '${AppAssets.poetryCardPath}/${currCard}_poetry_card.png';

    try {
      // 从资源中加载图片
      ByteData byteData = await rootBundle.load(imagePath);

      // 将ByteData转换为Uint8List
      Uint8List uint8List = byteData.buffer.asUint8List();

      // 将图片保存到图库
      final result = await ImageGallerySaver.saveImage(uint8List);

      if (result['isSuccess']) {
        getMessageDialog(context, title: '图片保存成功！');
      } else {
        getMessageDialog(context, title: '图片保存失败！');
      }
    } catch (e) {
      getMessageDialog(context, title: '发生错误！', text: e.toString());
    }
  }
}
