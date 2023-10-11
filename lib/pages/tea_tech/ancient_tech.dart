import 'package:flutter/material.dart';
import 'package:whispers_of_tea/constant/ancient_tech_info.dart';
import 'package:whispers_of_tea/widgets/dashed_border_part.dart';
import 'package:whispers_of_tea/widgets/image_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';
import 'package:whispers_of_tea/widgets/teapot_label.dart';

class AncientTechPage extends StatelessWidget {
  const AncientTechPage({super.key});

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
              itemCount: AncientTechInfo.dataList.length + 2,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const MyAppBar(title: '古法制茶');
                } else if (index == AncientTechInfo.dataList.length + 1) {
                  return const SizedBox(height: 10);
                } else {
                  Map<String, String> map = AncientTechInfo.dataList[index - 1];
                  return _getPart(
                    map['title']!,
                    map['text']!,
                    map['imagePath']!,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  _getPart(String title, String text, String imagePath) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Column(
        children: [
          TeapotLabel(title),
          DashedBorderPart(text: text, imagePath: imagePath),
        ],
      ),
    );
  }
}
