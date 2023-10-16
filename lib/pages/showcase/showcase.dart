import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_net.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/model/commodity_by_id_model.dart';
import 'package:whispers_of_tea/model/commodity_list_by_page_model.dart';
import 'package:whispers_of_tea/widgets/gradient_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';

class ShowcasePage extends StatefulWidget {
  const ShowcasePage({super.key});

  @override
  State<ShowcasePage> createState() => _ShowcasePageState();
}

class _ShowcasePageState extends State<ShowcasePage> {
  final PageController controller = PageController();
  int selectedTabIndex = 0;
  final List<String> tabTitles = ['茶叶', '茶品', '茶具'];
  List<CommodityModel> dataList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    isLoading = true;
    _loadImageList(selectedTabIndex);
  }

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
                  height: MediaQuery.of(context).size.height - 178,
                  child: PageView(
                    controller: controller,
                    children: [
                      _getPage(0),
                      _getPage(1),
                      _getPage(2),
                    ],
                    onPageChanged: (index) {
                      setState(() {
                        selectedTabIndex = index; // 更新选中的索引
                        isLoading = true;
                        _loadImageList(selectedTabIndex);
                      });
                    },
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
          for (int i = 0; i < tabTitles.length; i++)
            _getPageBarItem(title: tabTitles[i], index: i),
        ],
      ),
    );
  }

  _loadImageList(int index) async {
    // 根据索引加载对应的 imageList
    CommodityListModel model = await AppNet.queryByPage(id: '$index');
    setState(() {
      dataList = model.records ?? [];
      isLoading = false;
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
            controller.animateToPage(
              selectedTabIndex,
              duration: const Duration(microseconds: 500),
              curve: Curves.ease,
            );
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
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (dataList.isEmpty) {
      return const Center(
        child: Text('暂无商品', style: AppStyle.showcaseCommodityText),
      );
    }
    return GridView.count(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      childAspectRatio: 0.8,
      shrinkWrap: true,
      children: [
        for (CommodityModel data in dataList) _getImageContainer(data),
      ],
    );
  }

  _getImageContainer(CommodityModel model) {
    return GestureDetector(
      onTap: () async {
        final Uri url = Uri.parse(model.link ?? '');
        if (!await launchUrl(url)) {
          throw Exception('无法打开网页$url');
        }
      },
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7),
                topRight: Radius.circular(7),
              ),
            ),
            child: model.coverImage == null
                ? Image.asset(AppAssets.noImg, fit: BoxFit.cover)
                : Image.network(model.coverImage!, fit: BoxFit.cover),
          ),
          Container(
            height: 35,
            width: 150,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppTheme.showcaseItemNameBgColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(7),
                bottomLeft: Radius.circular(7),
              ),
            ),
            child: Text(
              model.name ?? '暂无商品名',
              style: AppStyle.showcaseCommodityText,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
