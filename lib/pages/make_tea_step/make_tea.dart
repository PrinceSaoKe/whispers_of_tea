import 'package:flutter/material.dart';
import 'package:whispers_of_tea/constant/app_assets.dart';
import 'package:whispers_of_tea/constant/app_theme.dart';

class MakeTeaPage extends StatefulWidget {
  const MakeTeaPage({super.key});

  @override
  State<MakeTeaPage> createState() => _MakeTeaPageState();
}

class _MakeTeaPageState extends State<MakeTeaPage> {
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
          )
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
}
