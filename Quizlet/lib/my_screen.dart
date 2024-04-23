import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/quiz-logo.jpg',
                width: 300,
              )),
          const SizedBox(height: 0),
          const Text('QUIZLET'),
          const SizedBox(height: 0),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start'),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
