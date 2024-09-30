import 'package:flutter/material.dart';
import 'package:login_v2/layout/responsive_layout.dart';
import 'package:login_v2/sites/forgot_password/forgot_password.desktop.dart';
import 'package:login_v2/sites/forgot_password/forgot_password.mobile.dart';
import 'package:login_v2/sites/forgot_password/forgot_password.service.dart';

class ForgotPasswordSite extends StatelessWidget {
  const ForgotPasswordSite({super.key, required this.forgotPasswordService});

  final ForgotPasswordService forgotPasswordService;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileChild: ForgotPasswordMobile(
          emailController: forgotPasswordService.emailController,
          onConfirm: forgotPasswordService.onConfirm,
          onCancel: forgotPasswordService.onCancel),
      desktopChild: ForgotPasswordDesktop(
          emailController: forgotPasswordService.emailController,
          onConfirm: forgotPasswordService.onConfirm,
          onCancel: forgotPasswordService.onCancel),
    );
  }
}
