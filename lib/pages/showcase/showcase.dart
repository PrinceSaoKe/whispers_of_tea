import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_net.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/widgets/gradient_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

class ShowcasePage extends StatefulWidget {
  const ShowcasePage({super.key});

  @override
  State<ShowcasePage> createState() => _ShowcasePageState();
}

class _ShowcasePageState extends State<ShowcasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackground(),
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView(
              shrinkWrap: true,
              children: [
                const MyAppBar(title: '茶语橱窗'),
                _getLabel('热门推荐'),
                _getPageBar(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: PageView(
                    children: [
                      _getPage(),
                      _getPage(),
                      _getPage(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _getLabel(String label) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Row(
        children: [
          Container(
            width: 7,
            height: 25,
            decoration: BoxDecoration(
              color: AppTheme.showcaseLabelColor,
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          const SizedBox(width: 10),
          Text(label, style: AppStyle.showcaseLabelText),
        ],
      ),
    );
  }

  _getPageBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _getPageBarItem(title: '茶叶', selected: true),
          _getPageBarItem(title: '茶品'),
          _getPageBarItem(title: '茶具'),
        ],
      ),
    );
  }

  _getPageBarItem({required String title, bool selected = false}) {
    return Container(
      width: 80,
      height: 25,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected
            ? AppTheme.showcasePageBarSelectItemBgColor
            : AppTheme.showcasePageBarUnselectItemBgColor,
        borderRadius: BorderRadius.circular(14.5),
      ),
      child: Text(
        title,
        style: selected
            ? AppStyle.showcasePageBarSelectItemText
            : AppStyle.showcasePageBarUnselectItemText,
      ),
    );
  }

  _getPage() {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        Text('data'),
        InkWell(
          onTap: () {
            AppNet.queryById(id: '9999');
          },
          child: Text('data1111'),
        )
      ],
    );
  }
}
