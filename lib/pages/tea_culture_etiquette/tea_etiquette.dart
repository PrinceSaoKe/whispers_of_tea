import 'package:flutter/material.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

import '../../widgets/gradient_background.dart';
class TeaEtiquette extends StatelessWidget {
  const TeaEtiquette({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "饮茶礼仪",),
      body: Stack(
        children: [
          const GradientBackground(),
        ],
      ),
    );
  }
}
