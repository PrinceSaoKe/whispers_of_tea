import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/constant/tea_rules_text.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

import '../../app_style.dart';
import '../../widgets/divider.dart';
import '../../widgets/gradient_background.dart';
import 'image_top.dart';
class TeaRules extends StatelessWidget {
  const TeaRules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "茶道法则",),
      body: Stack(
        children: [
          const GradientBackground(),
          ScrollConfiguration(
            behavior:
            ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView(
              children: [
                const MyAppBar(title: "基础礼仪",),
                const ImageTop(imgPath: AppAssets.teaRulesImage),
                const DividerOfEtiquette(),
                _getTextContainer()
              ],
            ),
          )
        ],
      ),
    );
  }

  _getTextContainer(){
    return const Padding(
        padding: EdgeInsets.fromLTRB(25, 3, 25, 0),
      child: Text(
        TeaRulesText.text,style: AppStyle.teaRulesText,
      ),
    );
  }
}
