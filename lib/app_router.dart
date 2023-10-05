import 'package:get/get.dart';
import 'package:whispers_of_tea/pages/brew_tea_step/brew_tea.dart';
import 'package:whispers_of_tea/pages/home_page.dart';
import 'package:whispers_of_tea/pages/make_tea_step/make_tea.dart';
import 'package:whispers_of_tea/pages/poetry_card/poetry_card.dart';
import 'package:whispers_of_tea/pages/tea_appreciation/tea_appreciation.dart';
import 'package:whispers_of_tea/pages/tea_appreciation/tea_introduction.dart';
import 'package:whispers_of_tea/pages/tea_appreciation/tea_species.dart';
import 'package:whispers_of_tea/pages/tea_culture_etiquette/tea_attention.dart';
import 'package:whispers_of_tea/pages/tea_culture_etiquette/tea_basic_manner.dart';
import 'package:whispers_of_tea/pages/tea_culture_etiquette/tea_culture_etiquette.dart';
import 'package:whispers_of_tea/pages/tea_culture_etiquette/tea_etiquette.dart';
import 'package:whispers_of_tea/pages/tea_culture_etiquette/tea_rules.dart';

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
  static const String brewTea = '/brewTea';
  static const String teaCultureEtiquette = '/teaCultureEtiquette';
  static const String teaBasicManner = '/teaCultureEtiquette/teaBasicManner';
  static const String teaRules = '/teaCultureEtiquette/teaRules';
  static const String teaEtiquette = '/teaCultureEtiquette/teaEtiquette';
  static const String teaAttention = '/teaCultureEtiquette/teaAttention';

  /// 所有路由
  static final List<GetPage> router = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: teaAppreciation, page: () => const TeaApprePage()),
    GetPage(name: teaSpecies, page: () => const TeaSpeciesPage()),
    GetPage(name: teaIntroduction, page: () => const TeaIntroductionPage()),
    GetPage(name: poetryCard, page: () => const PoetryCardPage()),
    GetPage(name: makeTea, page: () => const MakeTeaPage()),
    GetPage(name: brewTea, page: () => const BrewTeaPage()),
    GetPage(name: teaCultureEtiquette, page: () => const TeaCultureEqi()),
    GetPage(name: teaBasicManner, page: () => const TeaBasicManner()),
    GetPage(name: teaRules, page: () => const TeaRules()),
    GetPage(name: teaEtiquette, page: () => const TeaEtiquette()),
    GetPage(name: teaAttention, page: () => const TeaAttention()),
  ];
}
