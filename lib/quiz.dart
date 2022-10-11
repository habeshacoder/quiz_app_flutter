// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

// ignore: use_key_in_widget_constructors
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  // ignore: prefer_const_constructors_in_immutables
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Question(questions[questionIndex]["questionText"] as String),
          ...(questions[questionIndex]["answer"] as List<Map<String, Object>>)
              .map((ans) {
            return Answer(
                () => answerQuestion(ans['score']), ans['text'] as String);
          }).toList()
        ]);
  }
}
