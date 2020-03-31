import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it';
    if(totalScore <= 15) {
      resultText = 'You are awesome';
    } else if (totalScore <= 25) {
      resultText = 'Pretty likable';
    } else if (totalScore <= 35) {
      resultText = 'You are .. strange';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          child: Text('Reset quiz'),
          onPressed: resetQuiz,
        )
      ],
    );
  }
}
