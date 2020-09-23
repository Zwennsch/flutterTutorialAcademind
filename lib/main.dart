import 'package:flutter/material.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Blue', 'Green', 'Purple', 'Yellow']
    },
    {
      'questionText': 'What is your favourite football team?',
      'answers': ['Werder', 'BVB', 'HSV']
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': ['Lion', 'Tiger', 'Dog']
    },
  ];
  void _answerQuestion() {
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
            : Center(
                child: Text("You did it"),
              ),
      ),
    );
  }
}
