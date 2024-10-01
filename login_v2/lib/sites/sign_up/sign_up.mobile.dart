import 'package:flutter/material.dart';
import 'package:login_v2/layout/centered_floating_card.dart';
import 'package:login_v2/sites/sign_up/components/sign_up.buttons.dart';
import 'package:login_v2/sites/sign_up/components/sign_up.icon.dart';
import 'package:login_v2/sites/sign_up/components/sign_up.inputs.dart';

class SignUpMobile extends StatelessWidget {
  const SignUpMobile({
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon & Hello Message
          const SignUpIcon(),
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
    );
  }
}
