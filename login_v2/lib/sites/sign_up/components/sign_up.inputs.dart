import 'package:flutter/material.dart';
import 'package:login_v2/components/password_input.dart';
import 'package:login_v2/components/text_input.dart';

class SignUpInputs extends StatelessWidget {
  const SignUpInputs(
      {super.key,
      required this.usernameController,
      required this.passwordController,
      required this.confirmPasswordController,
      this.innerSpacing = 20})
      : super();

  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

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
        SizedBox(height: innerSpacing),
        PasswordInput(
          controller: confirmPasswordController,
          hintText: 'Confirm Password',
        ),
      ],
    );
  }
}
