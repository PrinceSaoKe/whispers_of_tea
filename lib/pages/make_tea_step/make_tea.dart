import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/constant/make_tea_step.dart';

class MakeTeaPage extends StatefulWidget {
  const MakeTeaPage({super.key});

  @override
  State<MakeTeaPage> createState() => _MakeTeaPageState();
}

class _MakeTeaPageState extends State<MakeTeaPage> {
  int currStep = 0;
  String title = '';
  String content = '';

  /// 切换制茶步骤
  _getStepContent(int step) {
    currStep = step;
    title = MakeTeaStep.makeTeaStep[currStep]['title'] ?? '';
    content = MakeTeaStep.makeTeaStep[currStep]['text'] ?? '';
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
            if (currStep < MakeTeaStep.makeTeaStep.length - 1) {
              _getStepContent(currStep + 1);
            }
          });
        },
        child: Stack(
          children: [
            _getBackground(),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: AppTheme.makeTeaBgColor,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const SizedBox(height: 70),
                  _getTitleCircle(),
                  _getContentRect(),
                ],
              ),
            ),
            Positioned(
              bottom: 110,
              right: 90,
              child: Container(
                width: 240,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.gif3),
                    scale: 2.5,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: -70,
              child: Image.asset(AppAssets.girlImg),
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
          image: AssetImage(AppAssets.makeTeaStepBg),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  /// 标题
  _getTitleCircle() {
    return Container(
      width: 128,
      height: 128,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: AppTheme.makeTeaCircleColor,
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: Text(title, style: AppStyle.makeTeaTitleStyle),
    );
  }

  /// 文本框
  _getContentRect() {
    return Container(
      width: 413,
      height: 210,
      padding: const EdgeInsets.fromLTRB(75, 30, 75, 30),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.makeTeaStepBorder),
          fit: BoxFit.fill,
        ),
      ),
      child: currStep < MakeTeaStep.makeTeaStep.length - 1
          ? Text(content, style: AppStyle.makeTeaTextStyle)
          : ShaderMask(
              shaderCallback: (rect) {
                return AppTheme.makeTeaFinishColor.createShader(rect);
              },
              child: Text(
                content,
                style: AppStyle.makeTeaFinishStyle,
                textAlign: TextAlign.center,
              ),
            ),
    );
  }
}
