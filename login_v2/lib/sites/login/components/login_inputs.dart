import 'package:flutter/material.dart';
import 'package:login_v2/components/password_input.dart';
import 'package:login_v2/components/text_input.dart';

class LoginInputs extends StatelessWidget {
  const LoginInputs(
      {super.key,
      required this.usernameController,
      required this.passwordController,
      required this.onForgotPassword,
      this.innerSpacing = 20})
      : super();

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  final VoidCallback onForgotPassword;

  final double innerSpacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextInput(
          controller: usernameController,
          hintText: 'Username',
        ),
        SizedBox(height: innerSpacing),
        PasswordInput(
          controller: passwordController,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextButton(
                onPressed: onForgotPassword,
                style: ButtonStyle(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                ),
                child: const Text('Forgot Password?'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
