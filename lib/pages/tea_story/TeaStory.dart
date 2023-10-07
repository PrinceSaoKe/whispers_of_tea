import 'package:flutter/material.dart';
import 'package:whispers_of_tea/widgets/my_app_bar.dart';
import '../../app_assets.dart';
import '../../app_style.dart';
import '../../widgets/image_background.dart';
import '../../widgets/navigation.dart';
import '../../widgets/teapot_label.dart';


class TeaStory extends StatelessWidget {
  const TeaStory({Key? key}) : super(key: key);

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
                MyAppBar(
                  title: "档案故事",
                ),
                _getStoryCard()
              ],
            ),
          ),
          const Positioned(bottom: 0, child: Navigation(needBgImg: false,)),
        ],

      ),
    );
  }

  _getStoryCard(){
    return Padding(
        padding: EdgeInsets.fromLTRB(35, 5, 35, 0),
      child: Container(
        width: 339,
        decoration: BoxDecoration(
          color: Color(1589892777),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          children: [
            TeapotLabel("以 茶 怡 情"),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
              child: Text("    茶文化起于唐朝，兴于宋朝，宋朝时期更是衍生出了很多关于茶相关的娱乐游戏，斗茶便是其中之一，而我们的著名女词人李清照叶爱上了这种茶文化，还自己创新了新玩法——行茶令，更是经常于自己的丈夫切磋。玩法与行酒令基本一样，其中一位为令官，出难题让人解答，题目大都与吟诗作词有关，答不出来的人就要接受惩罚。\n"
                  "   他们以茶作为奖励，两人谁赢了谁就可以先喝茶，享受茶的美味，可以说是十分有情趣。《金石录后序》曾记载:“每饭罢，坐归来堂烹茶，指堆积书史，言某事在某书某卷第几叶第几行，以中否角胜负，为饮茶先后。中，即举杯大笑，至茶倾覆怀中，反不得饮而起。”李清照与赵明诚的这件饮茶趣事，也是让后世之人吃了不少狗粮，引得他们十分羡慕，纷纷效仿。",
              style: AppStyle.teaStoryText,),
            )
          ],
        ),
      ),
    );
  }
}