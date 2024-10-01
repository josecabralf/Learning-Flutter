import 'package:flutter/material.dart';

class ButtonInput extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  final Color color;
  final Color fontColor;

  const ButtonInput({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.deepPurple,
    this.fontColor = const Color.fromARGB(255, 253, 244, 235),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: fontColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
