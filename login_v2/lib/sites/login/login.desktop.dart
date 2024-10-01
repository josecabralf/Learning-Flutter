import 'package:flutter/material.dart';
import 'package:login_v2/components/icon_with_text.dart';
import 'package:login_v2/layout/centered_floating_card.dart';
import 'package:login_v2/sites/login/components/login.buttons.dart';
import 'package:login_v2/sites/login/components/login.inputs.dart';

class LoginDesktop extends StatelessWidget {
  const LoginDesktop(
      {super.key,
      required this.passwordController,
      required this.usernameController,
      required this.onForgotPassword,
      required this.onLogin,
      required this.onSignUp})
      : super();

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  final VoidCallback onForgotPassword;
  final VoidCallback onLogin;
  final VoidCallback onSignUp;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CenteredFloatingCard(
        child: Container(
          width: 600,
          constraints: const BoxConstraints(minHeight: 700, minWidth: 400),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon & Hello Message
              const IconWithText(text: 'Hello, pleasure to see you!', icon: Icons.person,),
              const SizedBox(height: 40),

              // Username & Password Inputs
              LoginInputs(
                usernameController: usernameController,
                passwordController: passwordController,
                onForgotPassword: onForgotPassword,
              ),
              const SizedBox(height: 10),

              // Login Button
              LoginButtons(onLogin: onLogin, onSignUp: onSignUp),
            ],
          ),
        ),
      ),
    );
  }
}
