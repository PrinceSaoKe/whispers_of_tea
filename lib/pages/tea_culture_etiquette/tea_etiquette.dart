import 'package:flutter/material.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';
import '../../app_assets.dart';
import '../../app_style.dart';
import '../../widgets/divider.dart';
import '../../widgets/image_background.dart';
import 'package:whispers_of_tea/constant/tea_etiquette.dart';

import 'image_top.dart';

class TeaEtiquette extends StatelessWidget {
  const TeaEtiquette({Key? key}) : super(key: key);

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
                MyAppBar(
                  title: "饮茶礼仪",
                ),
                const ImageTop(imgPath: AppAssets.teaEtiquetteImage),
                for (int i = 0; i < 4; i++) _getEtiquetteCard(i),
              ],
            ),
          )
        ],
      ),
    );
  }

  _getEtiquetteCard(int index) {
    return Column(
      children: [
        const DividerOfEtiquette(),
        Padding(
          padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
          child: Row(
            children: <Widget>[
              Column(
                children: [
                  Image(
                    image: AssetImage(
                        TeaEtiquetteDetail.etiquetteItem[index]['imgPath']!),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    TeaEtiquetteDetail.etiquetteItem[index]['title']!,
                    style: AppStyle.teaEtiquetteTitle,
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                width: 195,
                child: Text(
                  TeaEtiquetteDetail.etiquetteItem[index]['text']!,
                  style: AppStyle.teaEtiquetteText,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
