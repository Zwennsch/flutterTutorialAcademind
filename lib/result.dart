import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are OK';
    } else {
      resultText = 'You are amazing';
    }
    return resultText;
  }

  Result(this.resultScore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
