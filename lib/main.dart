import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_net.dart';
import 'package:whispers_of_tea/app_router.dart';
import 'package:whispers_of_tea/app_theme.dart';

void main() async {
  await AppNet.getBaseUrl();
  WidgetsFlutterBinding.ensureInitialized();
  // 指定了应用程序的首选方向为纵向（竖屏）方向
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 使用Get管理路由，将MaterialApp换成GetMaterialApp
    return GetMaterialApp(
      title: '茶语',
      debugShowCheckedModeBanner: false, // 取消显示屏幕右上角的debug模式
      theme: AppTheme.themeData,
      initialRoute: AppRouter.teaAppreciation, // 初始页面
      getPages: AppRouter.router, // 所有的页面
    );
  }
}
