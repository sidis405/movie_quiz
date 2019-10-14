import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _showQuestion = true;
  var _totalPoints = 0;

  final _questionMap = const [
    {
      "question": "What's your favorite Tarantino movie?",
      "answers": [
        {"text": "Pulp Fiction", "points": 50},
        {"text": "Kill Bill", "points": 40},
        {"text": "Bonus: From Dusk Till Dawn", "points": 30},
        {"text": "Once Upon A Time In Hollywood", "points": 40},
      ]
    },
    {
      "question": "What's your favorite sci-fi movie?",
      "answers": [
        {"text": "Shaun of The Dead", "points": 60},
        {"text": "The Matrix", "points": 30},
      ]
    },
    {
      "question": "What's your favorite space exploration tv show?",
      "answers": [
        {"text": "The Expanse", "points": 60},
        {"text": "Battlestar Galactica", "points": 50},
        {"text": "The Orville", "points": 40},
        {"text": "Star Trek TOS", "points": 50},
      ]
    }
  ];

  void _answerQuestion(chosenAnswer) {
    setState(() {
      _totalPoints += chosenAnswer['points'];
      _questionIndex = _questionIndex + 1;
      _showQuestion = _questionIndex < _questionMap.length;
    });
  }

  void _restartQuiz() {
    setState(() {
      _totalPoints = 0;
      _questionIndex = 0;
      _showQuestion = true;
    });
  }

  _getFeedback() {
    if(_totalPoints <= 50){
      return "You poor sap! You got $_totalPoints points!";
    } else if(_totalPoints <= 100){
      return "I could deal with you! You got $_totalPoints points!";
    } else if(_totalPoints <= 130){
      return "Niiiice! You got $_totalPoints points!";
    } if(_totalPoints <= 170){
      return "Wanna be friends? You got $_totalPoints points!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Movie Quest"),
        ),
        body: Center(
            child: _showQuestion
                ? Quiz(
                    questionMap: _questionMap,
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestion)
                : Result(feedback: _getFeedback(), restart: _restartQuiz)),
      ),
    );
  }
}
