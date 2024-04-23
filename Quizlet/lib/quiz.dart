import 'package:flutter/material.dart';
import 'package:my_app_two/my_screen.dart';
import 'package:my_app_two/questions.dart';
import 'package:my_app_two/data/questionsreal.dart';
import 'package:my_app_two/results.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return QuizScreen();
  }
}

class QuizScreen extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = MyScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = Questions(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.amber],
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
