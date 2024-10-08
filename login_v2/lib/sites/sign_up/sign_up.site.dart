import 'package:flutter/material.dart';
import 'package:login_v2/layout/responsive_layout.dart';
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
          confirmPasswordController: signupService.confirmPasswordController,
          onSignUp: signupService.onSignUp,
          onCancel: signupService.onCancel),
      desktopChild: SignUpDesktop(
          usernameController: signupService.usernameController,
          passwordController: signupService.passwordController,
          confirmPasswordController: signupService.confirmPasswordController,
          onSignUp: signupService.onSignUp,
          onCancel: signupService.onCancel)
    );
  }
}
