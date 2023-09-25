import 'package:get/get.dart';
import 'package:whispers_of_tea/pages/home_page.dart';
import 'package:whispers_of_tea/pages/poetry_card/poetry_card.dart';

class AppRouter {
  AppRouter._();

  /// 页面路径的值
  static const String root = '/';
  static const String home = '/home';
  static const String poetryCard = '/poetryCard';

  /// 所有路由
  static final List<GetPage> router = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: poetryCard, page: () => const PoetryCardPage()),
  ];
}
