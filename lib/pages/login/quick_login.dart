import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_router.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/widgets/login_button.dart';

class QuickLoginPage extends StatefulWidget {
  const QuickLoginPage({super.key});

  @override
  State<QuickLoginPage> createState() => _QuickLoginPageState();
}

class _QuickLoginPageState extends State<QuickLoginPage> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.loginBg,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(gradient: AppTheme.loginBgColor),
          ),
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(overscroll: false),
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                const SizedBox(height: 90),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    '快速登录\n需要验证手机号',
                    style: AppStyle.loginPageText,
                  ),
                ),
                const SizedBox(height: 50),
                const Center(
                  child: Text(
                    '[  131****5685  ]',
                    style: AppStyle.loginPageText,
                  ),
                ),
                const SizedBox(height: 50),
                _getCheckBox(),
                const SizedBox(height: 50),
                const LoginButton(
                  text: '一键登录',
                  backgroundColor: AppTheme.loginButtonDarkColor,
                ),
                LoginButton(
                  text: '手机号登录',
                  backgroundColor: AppTheme.loginButtonLightColor,
                  onTap: () {
                    Get.toNamed(AppRouter.pinLogin);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _getCheckBox() {
    return Row(
      children: [
        Checkbox(
          value: checked,
          activeColor: AppTheme.loginCheckBoxColor,
          shape: const CircleBorder(
            side: BorderSide(color: AppTheme.loginCheckBoxColor),
          ),
          onChanged: (value) {
            setState(() {
              checked = value ?? true;
            });
          },
        ),
        const Expanded(
          child: Text(
            '我已阅读并同意《中国移动认证服务协议》\n《用户协议》和《隐私政策》并授权茶语获取本机号码',
            style: AppStyle.loginCheckBoxText,
          ),
        ),
      ],
    );
  }
}
