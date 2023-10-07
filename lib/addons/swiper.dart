import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class DefaultSwiper extends StatelessWidget {
  const DefaultSwiper({
    super.key,
    required this.height,
    required this.dataList,
  });

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

class StackSwiper extends StatelessWidget {
  StackSwiper({super.key, required this.dataList, required this.height});

  final double height;
  final List<Widget> dataList;
  final CustomLayoutOption customLayoutOption =
      CustomLayoutOption(startIndex: 0, stateCount: 6)
        ..addTranslate([
          const Offset(-120.0, 0.0),
          const Offset(-80.0, 0.0),
          const Offset(-40.0, 0.0),
          const Offset(0.0, 0.0),
          const Offset(40.0, 0.0),
          const Offset(80.0, 0.0),
        ]);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Swiper(
        itemCount: dataList.length,
        itemWidth: double.infinity,
        itemHeight: height,
        layout: SwiperLayout.CUSTOM,
        customLayoutOption: customLayoutOption,
        itemBuilder: (context, index) {
          return dataList[index];
        },
      ),
    );
  }
}
