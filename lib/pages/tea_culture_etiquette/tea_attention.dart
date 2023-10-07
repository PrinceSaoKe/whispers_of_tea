import 'package:flutter/material.dart';
import 'package:whispers_of_tea/widgets/image_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

import '../../app_assets.dart';
import '../../app_style.dart';
import '../../constant/tea_attention.dart';
import '../../widgets/divider.dart';
import '../../widgets/gradient_background.dart';
import '../../widgets/teapot_label.dart';
import 'image_top.dart';

class TeaAttention extends StatelessWidget {
  const TeaAttention({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackground(),
          const ImageBackground(),
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView(
              children: [
                MyAppBar(
                  title: "注意事项",
                ),
                const ImageTop(imgPath: AppAssets.teaAttentionImage),
                const DividerOfEtiquette(),
                for (int i = 0; i < 3; i++) _getTextContainer(i)
              ],
            ),
          )
        ],
      ),
    );
  }

  _getTextContainer(int index) {
    return Padding(
      padding: EdgeInsets.fromLTRB(35, 5, 35, 0),
      child: Stack(children: [
        const Positioned(
            right: 0,
            top: 5,
            child: Image(
                width: 60,
                image: AssetImage(
                    'assets/images/tea_culture_etiquette/teapot.png'))),
        Container(
          child: Column(
            children: [
              TeapotLabel(TeaAttentionText.attentionItem[index]['title'] ?? ''),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(952358569),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  TeaAttentionText.attentionItem[index]['text'] ?? '',
                  style: AppStyle.teaAttentionText,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
