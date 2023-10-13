import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_net.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/model/commodity_byId_model.dart';
import 'package:whispers_of_tea/widgets/gradient_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

import '../../model/commodity_list_byPage_model.dart';

class ShowcasePage extends StatefulWidget {
  const ShowcasePage({super.key});

  @override
  State<ShowcasePage> createState() => _ShowcasePageState();
}

class _ShowcasePageState extends State<ShowcasePage> {
  int selectedTabIndex = 0;
  final List<String> tabTitles = ['茶叶', '茶品', '茶具'];
  List <Map> imageList = [];
  String name = '';

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
                    controller: PageController(initialPage: selectedTabIndex),
                    children: [
                      _getPage(0),
                      _getPage(1),
                      _getPage(2),
                    ],
                    onPageChanged: (index) {
                      setState(() {
                        selectedTabIndex = index; // 更新选中的索引
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
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
          for (int i = 0; i < tabTitles.length; i++)
            _getPageBarItem(title: tabTitles[i], index: i),
        ],
      ),
    );
  }

  _loadImageList(int index) async {
    // 根据索引加载对应的 imageList
    CommodityListModel model = await AppNet.queryByPage(id: '$index') as CommodityListModel;
    setState(() {
      imageList = model.records.cast<Map>();
    });
  }
  _getPageBarItem({required String title, required int index}) {
    return Container(
      width: 80,
      height: 25,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: index == selectedTabIndex
            ? AppTheme.showcasePageBarSelectItemBgColor
            : AppTheme.showcasePageBarUnselectItemBgColor,
        borderRadius: BorderRadius.circular(14.5),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedTabIndex = index; // 更新选中的索引
            _loadImageList(selectedTabIndex);
          });
        },
        child: Text(
          title,
          style: index == selectedTabIndex
              ? AppStyle.showcasePageBarSelectItemText
              : AppStyle.showcasePageBarUnselectItemText,
        ),
      ),
    );
  }

  _getPage(int index) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
      shrinkWrap: true,
      children: [
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          mainAxisSpacing: 20,
          children: [
            for (var imageUrl in imageList)
              _getImageContainer(imageUrl['link'],imageUrl['name']),
          ],
        ),
      ],
    );
  }

  _getImageContainer(String img,String name){
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(7),
              topRight: Radius.circular(7)
            )
          ),
          child: Image.network(img,fit: BoxFit.fill,),
        ),
        Container(
          height: 35,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(7),
              bottomLeft: Radius.circular(7)
            )
          ),
          child: Center(
            child: Text(
              name,style: AppStyle.showcaseCommodityText,
            ),
          ),
        )
      ],
    );
  }

}
