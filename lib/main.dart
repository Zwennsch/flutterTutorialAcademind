import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 12},
        {'text': 'Purple', 'score': 1},
        {'text': 'Yellow', 'score': 3},
      ]
    },
    {
      'questionText': 'What is your favourite football team?',
      'answers': [
        {'text': 'Werder', 'score': 20},
        {'text': 'BVB', 'score': 10},
        {'text': 'HSV', 'score': 0},
      ]
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'Lion', 'score': 15},
        {'text': 'Tiger', 'score': 10},
        {'text': 'Dog', 'score': 15},
      ]
    },
  ];
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
