import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whispers_of_tea/addons/app_data.dart';
import 'package:whispers_of_tea/app_assets.dart';
import 'package:whispers_of_tea/app_net.dart';
import 'package:whispers_of_tea/app_router.dart';
import 'package:whispers_of_tea/app_style.dart';
import 'package:whispers_of_tea/app_theme.dart';
import 'package:whispers_of_tea/model/login_model.dart';
import 'package:whispers_of_tea/widgets/login_button.dart';
import 'package:whispers_of_tea/widgets/login_textfield.dart';
import 'package:whispers_of_tea/widgets/message_dialog.dart';

class QuickLoginPage extends StatefulWidget {
  const QuickLoginPage({super.key});

  @override
  State<QuickLoginPage> createState() => _QuickLoginPageState();
}

class _QuickLoginPageState extends State<QuickLoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? userEmail = '';

  @override
  void initState() {
    super.initState();
    _getUserEmail();
  }

  _getUserEmail() async {
    userEmail = await AppData.getString(AppData.userEmail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // 避免输入法弹出时背景图被压缩变形
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
                    '你好，\n欢迎回到茶语',
                    style: AppStyle.loginPageText,
                  ),
                ),
                SizedBox(height: userEmail == null ? 0 : 30),
                userEmail == null
                    ? const SizedBox(height: 0)
                    : Center(
                        child: Text(
                          userEmail!,
                          style: AppStyle.loginPageText,
                        ),
                      ),
                const SizedBox(height: 25),
                LoginTextfield(
                  label: '邮箱',
                  controller: emailController,
                ),
                const SizedBox(height: 20),
                LoginTextfield(
                  label: '密码',
                  controller: passwordController,
                  hideText: true,
                ),
                const SizedBox(height: 50),
                LoginButton(
                  text: '一键登录',
                  backgroundColor: AppTheme.loginButtonDarkColor,
                  onTap: () async {
                    LoginModel model = await AppNet.login(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                    Get.dialog(MessageDialog(title: model.msg ?? '未知错误'));
                  },
                ),
                LoginButton(
                  text: '邮箱注册',
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
}
