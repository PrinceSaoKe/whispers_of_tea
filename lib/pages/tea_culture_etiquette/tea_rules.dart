import 'package:flutter/material.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

import '../../widgets/gradient_background.dart';
class TeaRules extends StatelessWidget {
  const TeaRules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "茶道法则",),
      body: Stack(
        children: [
          const GradientBackground(),
        ],
      ),
    );
  }
}
