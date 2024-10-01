import 'package:flutter/material.dart';
import 'package:login_v2/components/icon_with_text.dart';
import 'package:login_v2/layout/centered_floating_card.dart';
import 'package:login_v2/sites/forgot_password/components/forgot_password.buttons.dart';
import 'package:login_v2/sites/forgot_password/components/forgot_password.inputs.dart';

class ForgotPasswordDesktop extends StatelessWidget {
  const ForgotPasswordDesktop({
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
    return CenteredFloatingCard(
      child: Container(
        width: 600,
        constraints: const BoxConstraints(minHeight: 700, minWidth: 600),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon & Hello Message
            const IconWithText(text: 'Forgot Password?', icon: Icons.person),
            const SizedBox(height: 40),

            // Username Input
            ForgotPasswordInputs(usernameController: emailController,),

            const SizedBox(height: 40),

            // Login Button
            ForgotPasswordButtons(onConfirm: onConfirm, onCancel: onCancel,),
          ],
        ),
      ),
    );
  }
}
