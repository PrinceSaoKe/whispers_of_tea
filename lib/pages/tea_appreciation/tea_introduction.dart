import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/constant/tea_info.dart';
import 'package:whispers_of_tea/widgets/image_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

class TeaIntroductionPage extends StatefulWidget {
  const TeaIntroductionPage({super.key});

  @override
  State<TeaIntroductionPage> createState() => _TeaIntroductionPageState();
}

class _TeaIntroductionPageState extends State<TeaIntroductionPage> {
  late TeaInfo teaInfo;

  @override
  void initState() {
    super.initState();
    teaInfo = Get.arguments;
  }

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
                    title: teaInfo.name, backgroundColor: Colors.transparent),
                _getHead(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _getHead() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(width: 1, color: teaInfo.color),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              height: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: teaInfo.color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(teaInfo.name, style: AppStyle.teaIntroNameStyle),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  '${teaInfo.temperature}℃',
                  style: AppStyle.teaIntroTemperaStyle,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '茶|${teaInfo.teaWeight}g',
                    style: AppStyle.teaIntroWeightStyle,
                  ),
                  Text(
                    '水|${teaInfo.waterVolume}ml',
                    style: AppStyle.teaIntroWeightStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  teaInfo.warmOrCold,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: AppStyle.siYuanHeiTiFont,
                    color: teaInfo.color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
