import 'package:flutter/material.dart';
import 'package:login_v2/components/button_input.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons(
    {super.key,
    required this.onSignUp,
    required this.onCancel,});

  final VoidCallback onSignUp;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Register Button
        Column(
          children: [
            ButtonInput(text: 'Sign In', onPressed: onSignUp),
            const SizedBox(height: 10),
            ButtonInput(text: 'Back', onPressed: onCancel, color: Colors.grey[500]!),
          ],
        ),
      ],
    );
  }
}
