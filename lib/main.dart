import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {  

  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\s your favorite animal?',
      'answer': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Ducs', 'score': 3},
        {'text': 'Cat', 'score': 1}
        ],
    },
    {
      'questionText': 'What\s your favorite Teacheral?',
      'answer': [
        {'text': 'Max', 'score': 10},
        {'text': 'Alex', 'score': 5},
        {'text': 'Sam', 'score': 3},
        {'text': 'Ninja', 'score': 1}
        ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _restartGame() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restartGame),
      ),
    );
  }
}
