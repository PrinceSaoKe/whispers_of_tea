import 'package:get/get.dart';
import 'package:whispers_of_tea/pages/home_page.dart';
import 'package:whispers_of_tea/pages/make_tea_step/make_tea.dart';
import 'package:whispers_of_tea/pages/poetry_card/poetry_card.dart';
import 'package:whispers_of_tea/pages/tea_appreciation/tea_appreciation.dart';
import 'package:whispers_of_tea/pages/tea_appreciation/tea_introduction.dart';
import 'package:whispers_of_tea/pages/tea_appreciation/tea_species.dart';

class AppRouter {
  AppRouter._();

  /// 页面路径的值
  static const String root = '/';
  static const String home = '/home';
  static const String teaAppreciation = '/teaAppreciation';
  static const String teaSpecies = '/teaAppreciation/teaSpecies';
  static const String teaIntroduction =
      '/teaAppreciation/teaSpecies/teaIntroduction';
  static const String poetryCard = '/poetryCard';
  static const String makeTea = '/makeTea';

  /// 所有路由
  static final List<GetPage> router = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: teaAppreciation, page: () => const TeaApprePage()),
    GetPage(name: teaSpecies, page: () => const TeaSpeciesPage()),
    GetPage(name: teaIntroduction, page: () => const TeaIntroductionPage()),
    GetPage(name: poetryCard, page: () => const PoetryCardPage()),
    GetPage(name: makeTea, page: () => const MakeTeaPage()),
  ];
}
