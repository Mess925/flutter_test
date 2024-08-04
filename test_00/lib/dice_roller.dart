import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImge = 'assets/images/dice-3.png';

  void rollDice() {
    setState(() {
      activeDiceImge = 'assets/images/dice-5.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
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
    );
  }
}
