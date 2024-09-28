import 'package:flutter/material.dart';

class ButtonInput extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonInput({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Color.fromARGB(255, 253, 244, 235),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
