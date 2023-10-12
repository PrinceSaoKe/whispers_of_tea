import 'package:get/get.dart';
import 'package:whispers_of_tea/pages/brew_tea_step/brew_tea.dart';
import 'package:whispers_of_tea/pages/home_page.dart';
import 'package:whispers_of_tea/pages/login/quick_login.dart';
import 'package:whispers_of_tea/pages/login/register.dart';
import 'package:whispers_of_tea/pages/make_tea_step/make_tea.dart';
import 'package:whispers_of_tea/pages/poetry_card/poetry_card.dart';
import 'package:whispers_of_tea/pages/showcase/showcase.dart';
import 'package:whispers_of_tea/pages/tea_appreciation/tea_appreciation.dart';
import 'package:whispers_of_tea/pages/tea_appreciation/tea_history.dart';
import 'package:whispers_of_tea/pages/tea_appreciation/tea_introduction.dart';
import 'package:whispers_of_tea/pages/tea_appreciation/tea_species.dart';
import 'package:whispers_of_tea/pages/tea_appreciation/tea_story.dart';
import 'package:whispers_of_tea/pages/tea_culture_etiquette/tea_attention.dart';
import 'package:whispers_of_tea/pages/tea_culture_etiquette/tea_basic_manner.dart';
import 'package:whispers_of_tea/pages/tea_culture_etiquette/tea_culture_etiquette.dart';
import 'package:whispers_of_tea/pages/tea_culture_etiquette/tea_etiquette.dart';
import 'package:whispers_of_tea/pages/tea_culture_etiquette/tea_rules.dart';
import 'package:whispers_of_tea/pages/tea_tech/ancient_tech.dart';
import 'package:whispers_of_tea/pages/tea_tech/brew_tea.dart';
import 'package:whispers_of_tea/pages/tea_tech/tea_tech.dart';

class AppRouter {
  AppRouter._();

  /// 页面路径的值
  static const String root = '/';
  static const String home = '/home';
  static const String teaAppreciation = '/teaAppreciation';
  static const String teaHistory = '/teaAppreciation/teaHistory';
  static const String teaSpecies = '/teaAppreciation/teaSpecies';
  static const String teaIntroduction =
      '/teaAppreciation/teaSpecies/teaIntroduction';
  static const String teaStory = '/teaAppreciation/teaStory';
  static const String teaTech = '/teaAppreciation/teaTech';
  static const String ancientTech = '/teaAppreciation/teaTech/ancientTech';
  static const String brewTeaTech = '/teaAppreciation/teaTech/brewTeaTech';
  static const String poetryCard = '/poetryCard';
  static const String makeTea = '/makeTea';
  static const String brewTea = '/brewTea';
  static const String teaCultureEtiquette = '/teaCultureEtiquette';
  static const String teaBasicManner = '/teaCultureEtiquette/teaBasicManner';
  static const String teaRules = '/teaCultureEtiquette/teaRules';
  static const String teaEtiquette = '/teaCultureEtiquette/teaEtiquette';
  static const String teaAttention = '/teaCultureEtiquette/teaAttention';
  static const String quickLogin = '/quickLogin';
  static const String pinLogin = '/pinLogin';
  static const String showcase = '/showcase';

  /// 所有路由
  static final List<GetPage> router = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: teaAppreciation, page: () => const TeaApprePage()),
    GetPage(name: teaHistory, page: () => TeaHistory()),
    GetPage(name: teaSpecies, page: () => const TeaSpeciesPage()),
    GetPage(name: teaIntroduction, page: () => const TeaIntroductionPage()),
    GetPage(name: teaStory, page: () => const TeaStoryPage()),
    GetPage(name: teaTech, page: () => const TeaTechPage()),
    GetPage(name: ancientTech, page: () => const AncientTechPage()),
    GetPage(name: brewTeaTech, page: () => const BrewTeaTech()),
    GetPage(name: poetryCard, page: () => const PoetryCardPage()),
    GetPage(name: makeTea, page: () => const MakeTeaPage()),
    GetPage(name: brewTea, page: () => const BrewTeaPage()),
    GetPage(name: teaCultureEtiquette, page: () => const TeaCultureEqi()),
    GetPage(name: teaBasicManner, page: () => const TeaBasicManner()),
    GetPage(name: teaRules, page: () => const TeaRules()),
    GetPage(name: teaEtiquette, page: () => const TeaEtiquette()),
    GetPage(name: teaAttention, page: () => const TeaAttention()),
    GetPage(name: quickLogin, page: () => const QuickLoginPage()),
    GetPage(name: pinLogin, page: () => const RegisterPage()),
    GetPage(name: showcase, page: () => const ShowcasePage()),
  ];
}
