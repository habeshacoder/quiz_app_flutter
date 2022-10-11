// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answer;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Answer(this.selectHandler, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      // ignore: deprecated_member_use
      child: RaisedButton(
        child: Text(answer),
        onPressed: selectHandler,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
