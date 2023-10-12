import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
