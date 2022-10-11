// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  Result(this.totalScore, this.resetHandler);

  String get resultPhrase {
    String resultText = "you did it";
    if (totalScore <= 8) {
      resultText = "you are awwesome and innocent";
    } else if (totalScore <= 12) {
      resultText = "you are likely good";
    } else {
      resultText = "you are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                color: Colors.blue[300],
                fontSize: 34,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.all(10),
              onPressed: resetHandler,
              child: Text("restart the quiz"))
        ],
      ),
    );
  }
}
