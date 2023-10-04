import 'package:get/get.dart';
import 'package:whispers_of_tea/pages/brew_tea_step/brew_tea.dart';
import 'package:whispers_of_tea/pages/home_page.dart';
import 'package:whispers_of_tea/pages/make_tea_step/make_tea.dart';
import 'package:whispers_of_tea/pages/poetry_card/poetry_card.dart';
import 'package:whispers_of_tea/pages/tea_appreciation/tea_appreciation.dart';

class AppRouter {
  AppRouter._();

  /// 页面路径的值
  static const String root = '/';
  static const String home = '/home';
  static const String teaAppreciation = '/teaAppreciation';
  static const String poetryCard = '/poetryCard';
  static const String makeTea = '/makeTea';
  static const String brewTea = '/brewTea';

  /// 所有路由
  static final List<GetPage> router = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: teaAppreciation, page: () => const TeaApprePage()),
    GetPage(name: poetryCard, page: () => const PoetryCardPage()),
    GetPage(name: makeTea, page: () => const MakeTeaPage()),
    GetPage(name: brewTea, page: () => const BrewTeaPage()),
  ];
}
