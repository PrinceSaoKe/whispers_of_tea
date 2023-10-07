import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';
import 'package:whispers_of_tea/widgets/navigation.dart';

import '../../app_assets.dart';
import '../../app_router.dart';
import '../../app_style.dart';
import '../../widgets/gradient_background.dart';
import '../../widgets/image_background.dart';


class TeaCultureEqi extends StatelessWidget {
  const TeaCultureEqi({Key? key}) : super(key: key);

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
                const MyAppBar(title: "文化习俗"),
                GestureDetector(
                  child:_getNavigationCard("基础礼仪", AppAssets.teaCultureNavImage1),
                  onTap: (){Get.toNamed(AppRouter.teaBasicManner);},
                ),
                GestureDetector(
                  child: _getNavigationCard("茶道法则", AppAssets.teaCultureNavImage2),
                  onTap: (){Get.toNamed(AppRouter.teaRules);},
                ),
                GestureDetector(
                  child: _getNavigationCard("饮茶礼节", AppAssets.teaCultureNavImage3),
                  onTap: (){Get.toNamed(AppRouter.teaEtiquette);},
                ),
                GestureDetector(
                  child: _getNavigationCard("注意事项", AppAssets.teaCultureNavImage4),
                  onTap: (){Get.toNamed(AppRouter.teaAttention);},
                )


              ],
            ),
          ),

          const Positioned(bottom: 0, child: Navigation(needBgImg: false,)),
        ],
      ),
    );
  }

  _getNavigationCard(String label,String imagePath){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getLabel(label),
        _getImage(imagePath)
      ],
    );
  }

  _getLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,top: 10),
      child: Text("$label >>>", style: AppStyle.teaAppreLabelStyle),
    );
  }

  _getImage(String imagePath){
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
      child: Container(
        width: 356,
        height: 103,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.fill)
        ),
      ),
    );
  }
}
