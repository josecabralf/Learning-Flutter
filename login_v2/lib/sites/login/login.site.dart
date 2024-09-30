import 'package:flutter/material.dart';
import 'package:login_v2/layout/responsive_layout.dart';
import 'package:login_v2/sites/login/login.desktop.dart';
import 'package:login_v2/sites/login/login.service.dart';
import 'package:login_v2/sites/login/login.mobile.dart';

class LoginSite extends StatelessWidget {
  const LoginSite({super.key, required this.loginService});

  final LoginService loginService;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileChild: LoginMobile(
          onForgotPassword: loginService.onForgotPassword,
          onLogin: loginService.onLogin,
          onSignUp: loginService.onSignUp,
          passwordController: loginService.usernameController,
          usernameController: loginService.passwordController,
        ),
        desktopChild: LoginDesktop(
          onForgotPassword: loginService.onForgotPassword,
          onLogin: loginService.onLogin,
          onSignUp: loginService.onSignUp,
          passwordController: loginService.usernameController,
          usernameController: loginService.passwordController,
        ));
  }
}
