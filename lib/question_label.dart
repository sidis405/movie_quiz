import 'package:flutter/material.dart';

class QuestionLabel extends StatelessWidget {
  final String questionText;

  QuestionLabel({@required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
