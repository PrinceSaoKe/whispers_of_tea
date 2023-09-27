class AppAssets {
  AppAssets._();

  /// assets文件夹目录
  static const String _assetsPath = 'assets';

  // static const String _fontsPath = '$_assetsPath/fonts';
  // static const String _iconsPath = '$_assetsPath/icons';
  static const String _imagesPath = '$_assetsPath/images';

  static const String teaImg = '$_imagesPath/tea.png';

  /// 诗词卡片相关图片
  static const String poetryCardPath = '$_imagesPath/poetry_card';

  static const String poetryCard1 = '$poetryCardPath/1_poetry_card.png';
  static const String poetryBg1 = '$poetryCardPath/1_poetry_bg.png';
  static const String poetryCard2 = '$poetryCardPath/2_poetry_card.png';
  static const String poetryBg2 = '$poetryCardPath/2_poetry_bg.png';

  /// 泡茶步骤相关图片
  static const String _makeTeaStepPath = '$_imagesPath/make_tea_step';

  static const String makeTeaStepBg = '$_makeTeaStepPath/make_tea_step_bg.png';

  /// 泡茶步骤相关图片
  static const String _brewTeaStepPath = '$_imagesPath/brew_tea_step';

  static const String brewTeaStepBg = '$_brewTeaStepPath/brew_tea_step_bg.png';
  static const String brewTeaStepBorder =
      '$_brewTeaStepPath/brew_tea_step_border.png';

  /// 引导页相关图片
  static const String _introductionAnimationPath =
      '$_imagesPath/introduction_animation';

  static const String introductionImage =
      '$_introductionAnimationPath/introduction_image.png';
  static const String relaxImage =
      '$_introductionAnimationPath/relax_image.png';
  static const String careImage = '$_introductionAnimationPath/care_image.png';
  static const String moodDairyImage =
      '$_introductionAnimationPath/mood_dairy_image.png';
  static const String welcomeImage = '$_introductionAnimationPath/welcome.png';
}
