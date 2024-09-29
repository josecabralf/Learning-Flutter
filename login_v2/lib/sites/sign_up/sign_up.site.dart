import 'package:flutter/material.dart';
import 'package:login_v2/abstract/responsive_layout.dart';
import 'package:login_v2/sites/sign_up/sign_up.desktop.dart';
import 'package:login_v2/sites/sign_up/sign_up.mobile.dart';
import 'package:login_v2/sites/sign_up/sign_up.service.dart';

class SignUpSite extends StatelessWidget {
  const SignUpSite({super.key, required this.signupService});

  final SignUpService signupService;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileChild: SignUpMobile(
            usernameController: signupService.usernameController,
            passwordController: signupService.passwordController,
            onSignUp: signupService.onSignUp),
        desktopChild: SignUpDesktop(
            usernameController: signupService.usernameController,
            passwordController: signupService.passwordController,
            onSignUp: signupService.onSignUp));
  }
}
