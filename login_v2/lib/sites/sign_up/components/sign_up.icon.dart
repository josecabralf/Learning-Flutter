import 'package:flutter/material.dart';

class SignUpIcon extends StatelessWidget {
  const SignUpIcon({super.key, this.iconSize = 200, this.fontSize = 16})
      : super();

  final double iconSize;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.person, size: iconSize, color: Colors.deepPurple[600]),
        Text('Fill up the form to sign up!',
          style: TextStyle(fontSize: fontSize, color: Colors.deepPurple[600])
        ),
      ],
    );
  }
}
