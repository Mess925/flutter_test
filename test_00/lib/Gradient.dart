import 'package:flutter/material.dart';

import 'package:test_00/style_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 127, 129, 255),
            Color.fromARGB(255, 255, 229, 229),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyleText(),
      ),
    );
  }
}
