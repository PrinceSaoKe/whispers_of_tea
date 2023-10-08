import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/constant/tea_attention.dart';
import 'package:whispers_of_tea/widgets/divider.dart';
import 'package:whispers_of_tea/widgets/image_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';
import 'package:whispers_of_tea/widgets/teapot_label.dart';

import 'image_top.dart';

class TeaAttention extends StatelessWidget {
  const TeaAttention({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ImageBackground(),
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView(
              children: [
                const MyAppBar(title: "注意事项"),
                const ImageTop(imgPath: AppAssets.teaAttentionImage),
                const DividerOfEtiquette(),
                for (int i = 0; i < 3; i++) _getTextContainer(i),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }

  _getTextContainer(int index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
      child: Stack(
        children: [
          const Positioned(
            right: 0,
            top: 5,
            child: Image(
              width: 60,
              image:
                  AssetImage('assets/images/tea_culture_etiquette/teapot.png'),
            ),
          ),
          Column(
            children: [
              TeapotLabel(TeaAttentionText.attentionItem[index]['title'] ?? ''),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0x38c3d6a9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  TeaAttentionText.attentionItem[index]['text'] ?? '',
                  style: AppStyle.teaAttentionText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
