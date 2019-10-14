import 'package:flutter/material.dart';

import './question_label.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questionMap;
  final questionIndex;
  final answerQuestion;

  Quiz({@required this.questionMap, @required this.questionIndex, @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionLabel(
          questionText: questionMap[questionIndex]['question']
          ),
        ...(questionMap[questionIndex]['answers'] as List<Map>)
            .map((answer) {
          return Answer(answer, answerQuestion);
        }).toList()
      ],
    );
  }
}
