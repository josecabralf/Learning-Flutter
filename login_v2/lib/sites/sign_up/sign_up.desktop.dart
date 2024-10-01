import 'package:flutter/material.dart';
import 'package:login_v2/components/icon_with_text.dart';
import 'package:login_v2/layout/centered_floating_card.dart';
import 'package:login_v2/sites/sign_up/components/sign_up.buttons.dart';
import 'package:login_v2/sites/sign_up/components/sign_up.inputs.dart';

class SignUpDesktop extends StatelessWidget {
  const SignUpDesktop({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.onSignUp,
    required this.onCancel
  });

  final VoidCallback onSignUp;
  final VoidCallback onCancel;

  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

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
            const IconWithText(text: 'Fill up the form to sign up!', icon: Icons.person,),
            const SizedBox(height: 40),

            // Username, Password & ConfirmPassword Inputs
            SignUpInputs(
              usernameController: usernameController,
              passwordController: passwordController,
              confirmPasswordController: confirmPasswordController,
            ),

            const SizedBox(height: 40),

            // Login Button
            SignUpButtons(onSignUp: onSignUp, onCancel: onCancel,),
          ],
        ),
      ),
    );
  }
}
