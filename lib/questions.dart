import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  String questionText;
  // ignore: use_key_in_widget_constructors
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        // ignore: prefer_const_constructors
        margin: EdgeInsets.all(18),
        child: Text(
          questionText,
          style:
              // ignore: prefer_const_constructors
              TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
