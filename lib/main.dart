import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [{'text': 'Black', 'score': 5}, {'text': 'White', 'score': 10}, {'text': 'Red', 'score': 15}],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [{'text': 'Tiger', 'score': 5}, {'text': 'Lion', 'score': 10}, {'text': 'Elephant', 'score': 15}],
    },
    {
      'questionText': 'What\'s your favorite city?',
      'answers': [{'text': 'London', 'score': 5}, {'text': 'New York', 'score': 10}, {'text': 'Beijing', 'score': 15}],
    },
  ];

  // function for handling answer press 
  void _answerQuestion(int score) {
    if (_questionIndex < (_questions.length)) {
      setState(() => _questionIndex = _questionIndex + 1);
      _totalScore += score;
    }
  }

  void _resetQuiz() {
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
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
