import 'package:flutter/material.dart';
import 'package:login_v2/abstract/responsive_layout.dart';
import 'package:login_v2/sites/login/desktop_login.dart';
import 'package:login_v2/sites/login/login_service.dart';
import 'package:login_v2/sites/login/mobile_login.dart';

class LoginSite extends StatelessWidget {
  LoginSite({super.key, required this.loginService});

  final LoginService loginService;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileChild: MobileLogin(
          onForgotPassword: loginService.onForgotPassword,
          onLogin: loginService.onLogin,
          onSignUp: loginService.onSignUp,
          passwordController: loginService.usernameController,
          usernameController: loginService.passwordController,
        ),
        desktopChild: DesktopLogin(
          onForgotPassword: loginService.onForgotPassword,
          onLogin: loginService.onLogin,
          onSignUp: loginService.onSignUp,
          passwordController: loginService.usernameController,
          usernameController: loginService.passwordController,
        ));
  }
}
