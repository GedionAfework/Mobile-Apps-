import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.black, Colors.black],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
