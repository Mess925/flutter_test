import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  GradientContainer.color({super.key})
      : color1 = const Color.fromARGB(255, 53, 53, 53),
        color2 = const Color.fromARGB(255, 0, 0, 0);

  final Color color1;
  final Color color2;
  var activeDiceImge = 'assets/images/dice-3.png';

  void rollDice() {
    activeDiceImge = 'assets/images/dice-5.png';
  }

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
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImge,
              width: 100,
            ),
            // const SizedBox(height: 10),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 20),
                  foregroundColor: const Color.fromARGB(255, 255, 106, 0),
                  textStyle: const TextStyle(fontSize: 12),
                ),
                child: const Text('Roll the Dice'))
          ],
        ),
      ),
    );
  }
}
