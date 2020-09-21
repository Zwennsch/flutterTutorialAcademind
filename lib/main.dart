import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import './qestion.dart';
import './main.dart';

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
  void _answerQuestion() {
    setState(() {
      if (_questionIndex < 2) {
        _questionIndex++;
      } else {
        _questionIndex = 0;
      }
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Blue', 'Green', 'Purple' , 'Yellow']
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
