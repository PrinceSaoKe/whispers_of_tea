import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_style.dart';

class DashedBorderPart extends StatelessWidget {
  const DashedBorderPart({
    super.key,
    required this.text,
    required this.imagePath,
  });

  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.dashedBorderImg),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 130, height: 80),
          const SizedBox(width: 10),
          Expanded(child: Text(text, style: AppStyle.dashedBorderPartText)),
        ],
      ),
    );
  }
}
