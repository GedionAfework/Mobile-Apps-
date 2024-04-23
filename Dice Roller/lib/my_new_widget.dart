import 'package:flutter/material.dart';

class MyNewWidget extends StatelessWidget {
  const MyNewWidget(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return const Text(
      'Gedion Afework',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28.6,
      ),
    );
  }
}
