import 'package:flutter/material.dart';

class CenteredFloatingCard extends StatelessWidget {
  const CenteredFloatingCard({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
        child: Card(
          color: Colors.deepPurple[200],
          child: child,
        ),
      ),
    );
  }
}
