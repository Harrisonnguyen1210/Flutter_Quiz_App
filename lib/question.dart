import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(questionText,
          style: TextStyle(fontSize: 20), 
          textAlign: TextAlign.center,
        ),
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30),
    );
  }
}
