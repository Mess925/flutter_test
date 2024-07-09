import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.color({super.key})
      : color1 = const Color.fromARGB(255, 53, 53, 53),
        color2 = const Color.fromARGB(255, 0, 0, 0);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 100,
            ),
            TextButton(onPressed: () {}, child: const Text('Roll the Dice'))
          ],
        ),
      ),
    );
  }
}
