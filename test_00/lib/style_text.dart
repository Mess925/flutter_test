import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Hi Welcome!',
      style: TextStyle(
        color: Color.fromARGB(255, 255, 238, 4),
        fontSize: 20,
      ),
    );
  }
}
