import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[600],
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
    throw UnimplementedError();
  }
}
