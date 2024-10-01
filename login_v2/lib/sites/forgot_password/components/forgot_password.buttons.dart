import 'package:flutter/material.dart';
import 'package:login_v2/components/button_input.dart';

class ForgotPasswordButtons extends StatelessWidget {
  const ForgotPasswordButtons(
    {super.key,
    required this.onConfirm,
    required this.onCancel,});

  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Register Button
        Column(
          children: [
            ButtonInput(text: 'Send Email', onPressed: onConfirm),
            const SizedBox(height: 10),
            ButtonInput(text: 'Back', onPressed: onCancel, color: Colors.grey[500]!),
          ],
        ),
      ],
    );
  }
}
