import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_assets.dart';

class ImageBackground extends StatelessWidget {
  const ImageBackground({super.key, this.imagePath});

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath ?? AppAssets.teaIntroBg,
      fit: BoxFit.fill,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}
