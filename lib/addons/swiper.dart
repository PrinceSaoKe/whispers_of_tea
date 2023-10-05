import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class MySwiper extends StatelessWidget {
  const MySwiper({super.key, required this.height, required this.dataList});

  final double height;
  final List<Widget> dataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(overscroll: false),
        child: Swiper(
          itemCount: dataList.length,
          viewportFraction: 0.8,
          loop: false,
          itemBuilder: (context, index) {
            return dataList[index];
          },
        ),
      ),
    );
  }
}
