import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_router.dart';
import 'package:whispers_of_tea/widgets/gradient_background.dart';
import 'package:whispers_of_tea/widgets/image_background.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animationController.animateTo(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ImageBackground(imagePath: AppAssets.homeBg),
          const GradientBackground(),
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRouter.teaAppreciation);
                  },
                  child: const Text('前往茶叶鉴赏页面'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRouter.poetryCard);
                  },
                  child: const Text('前往诗词卡片页面'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRouter.makeTea);
                  },
                  child: const Text('前往制茶页面'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRouter.brewTea);
                  },
                  child: const Text('前往泡茶页面'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRouter.quickLogin);
                  },
                  child: const Text('前往登录页面'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRouter.showcase);
                  },
                  child: const Text('前往茶语橱窗页面'),
                ),
              ],
            ),
          ),
          SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0),
              end: const Offset(0, 5),
            ).animate(
              CurvedAnimation(
                parent: animationController,
                curve: Curves.easeInOut,
              ),
            ),
            child: _getCard(),
          ),
        ],
      ),
    );
  }

  _getCard() {
    // return Container(width: 350, height: 110, color: Colors.red);
    return const SizedBox();
  }
}
