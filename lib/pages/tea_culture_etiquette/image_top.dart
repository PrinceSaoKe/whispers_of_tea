import 'package:flutter/material.dart';

class ImageTop extends StatelessWidget {
  const ImageTop({Key? key, required this.imgPath}) : super(key: key);

  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
      child: Container(
        width: 397,
        height: 181,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(imgPath))
        ),
      ),
    );
  }
}
