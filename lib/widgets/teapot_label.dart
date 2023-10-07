import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_style.dart';

class TeapotLabel extends StatelessWidget {
  const TeapotLabel(this.label, {super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.teapotImg, width: 23, height: 23),
          const SizedBox(width: 10),
          Text(label, style: AppStyle.teaHistoryLabelStyle),
          const SizedBox(width: 10),
          Image.asset(AppAssets.teapotImg, width: 23, height: 23),
        ],
      ),
    );
  }
}
