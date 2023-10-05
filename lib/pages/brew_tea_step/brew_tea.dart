import 'package:flutter/material.dart';
import 'package:whispers_of_tea/constant/app_assets.dart';
import 'package:whispers_of_tea/constant/app_style.dart';
import 'package:whispers_of_tea/constant/brew_tea_step.dart';

class BrewTeaPage extends StatefulWidget {
  const BrewTeaPage({super.key});

  @override
  State<BrewTeaPage> createState() => _BrewTeaPageState();
}

class _BrewTeaPageState extends State<BrewTeaPage> {
  int currStep = 0;
  String title = '';
  String content = '';

  /// 切换泡茶步骤
  _getStepContent(int step) {
    currStep = step;
    title = BrewTeaStep.brewTeaStep[currStep]['title'] ?? '';
    content = BrewTeaStep.brewTeaStep[currStep]['text'] ?? '';
  }

  @override
  void initState() {
    _getStepContent(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            if (currStep < BrewTeaStep.brewTeaStep.length - 1) {
              _getStepContent(currStep + 1);
            }
          });
        },
        child: Stack(
          children: [
            _getBackground(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  _getTitle(),
                  const SizedBox(height: 10),
                  _getContentRect(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 背景
  _getBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.brewTeaStepBg),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  /// 标题
  _getTitle() {
    return Container(
      width: 128,
      height: 128,
      alignment: Alignment.center,
      child: Text(title, style: AppStyle.brewTeaTitleStyle),
    );
  }

  /// 文本框
  _getContentRect() {
    return Container(
      width: 365,
      height: 128,
      padding: const EdgeInsets.fromLTRB(35, 20, 35, 20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.brewTeaStepBorder),
          fit: BoxFit.fill,
        ),
      ),
      child: Text(content, style: AppStyle.brewTeaTextStyle),
    );
  }
}
