import 'package:flutter/material.dart';
import 'package:whispers_of_tea/addons/swiper.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/widgets/image_background.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';
import 'package:whispers_of_tea/widgets/teapot_label.dart';

class TeaHistory extends StatelessWidget {
  TeaHistory({super.key});

  final List<Widget> _swiperList = [
    Image.asset(AppAssets.historySwiper6),
    Image.asset(AppAssets.historySwiper5),
    Image.asset(AppAssets.historySwiper4),
    Image.asset(AppAssets.historySwiper3),
    Image.asset(AppAssets.historySwiper2),
    Image.asset(AppAssets.historySwiper1),
    Image.asset(AppAssets.historySwiper9),
    Image.asset(AppAssets.historySwiper8),
    Image.asset(AppAssets.historySwiper7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ImageBackground(),
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView(
              children: [
                const MyAppBar(title: '历史发展'),
                StackSwiper(dataList: _swiperList, height: 150),
                const SizedBox(height: 5),
                _getText(
                    '中国是茶的原产地。中国人对茶的熟悉，上至帝王将相，文人墨客，诸子百家，下至挑夫贩夫，平民百姓，无不以茶为好。人们常说：“开门七件事，柴米油盐酱醋茶”。由此可见茶已深入人民各阶层。同样少数民族也好茶，藏族的酥油茶，蒙古族的奶茶。'),
                const TeapotLabel('神农时期'),
                _getText(
                    '茶之为饮，发乎神农氏。早在五千年前的神农时代，便有了茶。《神农本草经》中记载:“神农尝百草，日遇七十二毒，得荼而解之。”“荼”即为今天的茶，随着神农“以身试毒”，茶就这样被发现了。'),
                _getImage(AppAssets.teaHistory1),
                const TeapotLabel('汉朝时期'),
                _getText('饮茶之风开始兴起，茶叶主要作为食用和药用被人们所需要。'),
                _getImage(AppAssets.teaHistory2),
                const TeapotLabel('魏晋南北朝时期'),
                _getText(
                    '随着儒家、道家思想的推崇和佛教的传入，茶文化雏形初步形成。思想启蒙时期，茶成为了一种精神寄托被赋予了“儒释道”精神。'),
                _getImage(AppAssets.teaHistory3),
                const TeapotLabel('隋唐时期'),
                _getText(
                    '饮茶之风盛行，这时主要以煎茶、煮茶的饮茶方式为主。制茶事业也日益兴盛，品茶被看成是一桩风雅之事。唐代的陆羽著成了空前的茶叶专著《茶经》，开创了茶书的先河。'),
                _getImage(AppAssets.teaHistory4),
                const TeapotLabel('宋朝时期'),
                _getText(
                    '上至天子，下至百姓，都嗜茶成风，形成了点茶的品饮方式。大街小巷遍布“茶司”“茶楼”，还出现了“斗茶”的娱乐方式，宋徽宗赵佶的《大观茶论》便记载了“斗茶”的程式。'),
                _getImage(AppAssets.teaHistory5),
                const TeapotLabel('元朝时期'),
                _getText(
                    '随着“骑马的汉子”当了皇帝，“马背上的内蒙古奶茶”便应运而生，这是调饮茶发展的一个重要时期，也是中华茶文化发展的过渡时期。'),
                _getImage(AppAssets.teaHistory6),
                const TeapotLabel('明朝时期'),
                _getText(
                    '这是我国历史上出茶书最多的朝代，在250年间出书68种，现存46种。有张源的《茶录》，朱权的《茶谱》、欧阳修的《茶经水辨》等。这一时期也是统治者对茶叶制度十分重视和严格的时期。'),
                _getImage(AppAssets.teaHistory7),
                const TeapotLabel('清朝时期'),
                _getText(
                    '冲饮方式的出现，大大降低了饮茶的难度，文人雅士更加注重品茶的环境、心境和感受，于是涌现出了大量与茶相关的史书画卷。随着制茶技术的提高，六大茶类以及花茶的工艺基本成熟，人们喝茶也有了更高的追求。'),
                _getImage(AppAssets.teaHistory8),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _getText(String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Text(text, style: AppStyle.teaHistoryTextStyle),
    );
  }

  _getImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Image.asset(imagePath),
    );
  }
}
