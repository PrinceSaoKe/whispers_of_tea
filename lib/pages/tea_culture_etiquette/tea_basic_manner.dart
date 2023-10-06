import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

import '../../widgets/gradient_background.dart';
class TeaBasicManner extends StatelessWidget {
  const TeaBasicManner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackground(),
          ScrollConfiguration(
            behavior:
            ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView(
              children: [
                const MyAppBar(title: "基础礼仪",),
                _getImage(AppAssets.teaBasicMannerImage)
              ],
            ),
          )
        ],
      ),
    );
  }
  
  _getImage(String imgPath){
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
      width: 397,
      height: 181,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(imgPath))
      ),
    );
  }
}
