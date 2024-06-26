import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Hello Welcome !',
      style: TextStyle(
        color: Color.fromARGB(255, 255, 107, 107),
        fontSize: 18,
      ),
    );
  }
}
