import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are OK';
    } else {
      resultText = 'You are amazing';
    }
    return resultText;
  }

  Result(
    this.resultScore, this.resetQuiz
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetQuiz, child: Text('Resart Quiz'), color: Colors.blueGrey)
        ],
      ),
    );
  }
}
