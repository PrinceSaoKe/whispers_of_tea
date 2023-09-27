import 'package:flutter/material.dart';
import 'package:whispers_of_tea/constant/app_assets.dart';
import 'package:whispers_of_tea/constant/app_style.dart';
import 'package:whispers_of_tea/constant/app_theme.dart';

class MakeTeaPage extends StatefulWidget {
  const MakeTeaPage({super.key});

  @override
  State<MakeTeaPage> createState() => _MakeTeaPageState();
}

class _MakeTeaPageState extends State<MakeTeaPage> {
  String title = '鲜 叶';
  String content = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _getBackground(),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AppTheme.makeTeaBgColor,
          ),
          Align(
            alignment: const Alignment(0, -0.8),
            child: _getTitleCircle(),
          ),
        ],
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

  _getContentRect() {}
}
