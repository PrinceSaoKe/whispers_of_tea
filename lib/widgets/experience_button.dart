import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_assets.dart';

class ExperienceButton extends StatelessWidget {
  const ExperienceButton({super.key, required this.text, required this.route});

  final String text;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 20, 40, 40),
      // child: ElevatedButton.icon(
      //   onPressed: () {
      //     Get.toNamed(route);
      //   },
      //   label: const Icon(Icons.arrow_right_alt),
      //   icon: Text(text),
      //   style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
      // ),
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(route);
        },
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(AppAssets.teaImg, scale: 1.4),
              const SizedBox(width: 10),
              Text(text),
              const Icon(Icons.arrow_right_alt),
            ],
          ),
        ),
      ),
    );
  }
}
