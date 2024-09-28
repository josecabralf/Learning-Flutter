import 'package:flutter/material.dart';
import 'package:login_v2/sites/login/components/login_buttons.dart';
import 'package:login_v2/sites/login/components/login_icon.dart';
import 'package:login_v2/sites/login/components/login_inputs.dart';

class DesktopLogin extends StatelessWidget {
  const DesktopLogin(
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
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
            child: Container(
              width: 600,
              constraints: const BoxConstraints(minHeight: 700, minWidth: 400),
              child: Card(
                color: Colors.deepPurple[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon & Hello Message
                    const LoginIcon(),
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
          ),
        ),
      ),
    );
  }
}
