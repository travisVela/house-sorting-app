import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(HouseSortingApp());

class HouseSortingApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HouseSortingAppState();
  }
}

class _HouseSortingAppState extends State<HouseSortingApp> {
  var _questionIndex = 0;

  final _questions = [
    {
      'questionText': 'Which color do you prefer?',
      'answers': ['Red', 'Blue', 'Green', 'Yellow']
    },
    {
      'questionText': 'Which animal do you like best?',
      'answers': ['Badger', 'Snake', 'Raven', 'Lion']
    },
    {
      'questionText': 'Which describes you best?',
      'answers': ['Inquisitive', 'Doubtful', 'Brave', 'Joyful']
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('House Sorting App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex
              )
            : Result()
      ),
    );
  }
}
