import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.green[100],
        child: Text('Answer 1'),
        onPressed: null,
      ),
    );
    throw UnimplementedError();
  }
}
