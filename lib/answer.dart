import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override

  final answer;
  final Function callback;

  Answer(this.answer, this.callback);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer['text']),
        onPressed: () => callback(answer),
      ),
    );
  }
}
