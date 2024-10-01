import 'package:flutter/material.dart';
import 'package:login_v2/components/text_input.dart';

class ForgotPasswordInputs extends StatelessWidget {
  const ForgotPasswordInputs(
      {super.key,
      required this.usernameController,
      this.innerSpacing = 20})
      : super();

  final TextEditingController usernameController;

  final double innerSpacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextInput(
          controller: usernameController,
          hintText: 'Username',
        ),
      ],
    );
  }
}
