import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/constant/tea_info.dart';
import 'package:whispers_of_tea/widgets/gradient_background.dart';
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
      appBar: MyAppBar(title: teaInfo.name),
      body: Stack(
        children: [
          const GradientBackground(),
          _getHead(),
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
          border: Border.all(width: 1, color: AppTheme.teaInfoHeadBorderColor),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppTheme.greenTeaThemeColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(teaInfo.name),
              ),
            ),
            Expanded(flex: 1, child: Text('${teaInfo.temperature}℃')),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text('茶|${teaInfo.teaWeight}g'),
                  Text('水|${teaInfo.waterVolume}ml'),
                ],
              ),
            ),
            Expanded(flex: 1, child: Text(teaInfo.warmOrCold)),
          ],
        ),
      ),
    );
  }
}
