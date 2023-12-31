import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/constant/basic_manner.dart';
import 'package:whispers_of_tea/pages/tea_culture_etiquette/image_top.dart';
import 'package:whispers_of_tea/widgets/divider.dart';
import 'package:whispers_of_tea/widgets/gradient_background.dart';
import 'package:whispers_of_tea/widgets/image_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

class TeaBasicManner extends StatelessWidget {
  const TeaBasicManner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackground(),
          const ImageBackground(),
          const Positioned(
            right: 25,
            bottom: 260,
            child: Image(
              image:
                  AssetImage('assets/images/tea_culture_etiquette/teapot.png'),
            ),
          ),
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView(
              children: [
                const MyAppBar(title: "基础礼仪"),
                const ImageTop(imgPath: AppAssets.teaBasicMannerImage),
                const DividerOfEtiquette(),
                for (int i = 0; i < 7; i++) _getTextContainer(i),
                const SizedBox(height: 30),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BasicManner.mannerItem[index]['title'] ?? '',
            style: AppStyle.basicMannerItemTitle,
          ),
          Text(
            BasicManner.mannerItem[index]['text'] ?? '',
            style: AppStyle.basicMannerItemText,
          ),
        ],
      ),
    );
  }
}
