import 'package:flutter/material.dart';
import 'package:login_v2/sites/login/components/login.buttons.dart';
import 'package:login_v2/sites/login/components/login.icon.dart';
import 'package:login_v2/sites/login/components/login.inputs.dart';

class LoginMobile extends StatelessWidget {
  const LoginMobile(
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
          child: Card(
            color: Colors.deepPurple[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon & Hello Message
                const LoginIcon(iconSize: 100, fontSize: 16),
                const SizedBox(height: 20),

                // Username Field
                LoginInputs(
                  usernameController: usernameController,
                  passwordController: passwordController,
                  onForgotPassword: onForgotPassword,
                  innerSpacing: 5,
                ),
                const SizedBox(height: 10),

                // Login Button
                LoginButtons(
                  onLogin: onLogin,
                  onSignUp: onSignUp,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
