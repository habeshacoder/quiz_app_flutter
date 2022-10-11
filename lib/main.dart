// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:myflutterapp/result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      totalScore += score;
    });

    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final _questions = const [
      {
        "questionText": "what is your fav animal ?",
        "answer": [
          {"text": "pig", "score": 4},
          {"text": "cat", "score": 2},
          {"text": "dog", "score": 5}
        ]
      },
      {
        "questionText": "what is your fav music ?",
        "answer": [
          {"text": "rap", "score": 0},
          {"text": "ragie", "score": 6},
          {"text": "country", "score": 3}
        ]
      },
      {
        "questionText": "what is your fav movie ?",
        "answer": [
          {"text": "action", "score": 1},
          {"text": "horror", "score": 1},
          {"text": "commedy", "score": 3}
        ]
      }
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("my app"),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            body: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                  )
                : Result(totalScore, _resetQuiz)));
  }
}
