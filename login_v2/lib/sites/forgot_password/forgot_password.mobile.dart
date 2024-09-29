import 'package:flutter/material.dart';

class ForgotPasswordMobile extends StatelessWidget {
  const ForgotPasswordMobile({
    super.key,
    required this.emailController,
    required this.onConfirm,
    required this.onCancel,
  });

  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
