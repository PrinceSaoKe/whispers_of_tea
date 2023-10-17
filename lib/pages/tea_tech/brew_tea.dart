import 'package:flutter/material.dart';
import 'package:whispers_of_tea/constant/brew_tea_tech_step.dart';
import 'package:whispers_of_tea/widgets/dashed_border_part.dart';
import 'package:whispers_of_tea/widgets/image_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

class BrewTeaTech extends StatelessWidget {
  const BrewTeaTech({super.key});

  final List dataList = BrewTeaTechStep.brewTeaTechList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ImageBackground(),
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: dataList.length + 2,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const MyAppBar(title: '泡茶步骤');
                } else if (index == dataList.length + 1) {
                  return const SizedBox(height: 20);
                } else {
                  return _getPart(
                    dataList[index - 1]['text'],
                    dataList[index - 1]['imagePath'],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  _getPart(String text, String imagePath) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
      child: DashedBorderPart(
        text: text,
        imagePath: imagePath,
      ),
    );
  }
}
