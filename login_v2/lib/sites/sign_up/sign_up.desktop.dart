import 'package:flutter/material.dart';

class SignUpDesktop extends StatelessWidget {
  const SignUpDesktop({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.onSignUp,
  });

  final VoidCallback onSignUp;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
