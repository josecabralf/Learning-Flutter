import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({super.key, required this.text, required this.icon,
  this.iconSize = 200, this.fontSize = 16})
      : super();

  final double iconSize;
  final double fontSize;

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: iconSize, color: Colors.deepPurple[600]),
        Text(text,
          style: TextStyle(fontSize: fontSize, color: Colors.deepPurple[600])
        ),
      ],
    );
  }
}
