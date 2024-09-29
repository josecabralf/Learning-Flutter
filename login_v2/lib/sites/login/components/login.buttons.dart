import 'package:flutter/material.dart';
import 'package:login_v2/components/button_input.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons(
      {super.key,
      required this.onLogin,
      required this.onSignUp,
      this.innerSpacing = 20});

  final VoidCallback onLogin;
  final VoidCallback onSignUp;

  final double innerSpacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonInput(text: 'Sign In', onPressed: onLogin),
        SizedBox(height: innerSpacing),

        // Register Button
        Row(
          children: [
            Expanded(
                child: Divider(
              color: Colors.deepPurple[300],
              indent: 10,
              endIndent: 5,
            )),
            Text(
              'Don\'t have an account?',
              style: TextStyle(
                color: Colors.deepPurple[600],
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
                child: Divider(
              color: Colors.deepPurple[300],
              indent: 5,
              endIndent: 10,
            )),
          ],
        ),

        SizedBox(height: innerSpacing),
        ButtonInput(text: 'Sign Up', onPressed: onSignUp),
      ],
    );
  }
}
