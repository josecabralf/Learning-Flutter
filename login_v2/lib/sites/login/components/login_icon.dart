import 'package:flutter/material.dart';

class LoginIcon extends StatelessWidget {
  const LoginIcon({super.key, this.iconSize = 200, this.fontSize = 16})
      : super();

  final double iconSize;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.person, size: iconSize, color: Colors.deepPurple[600]),
        Text('Hello, pleasure to see you!',
            style:
                TextStyle(fontSize: fontSize, color: Colors.deepPurple[600])),
      ],
    );
  }
}
