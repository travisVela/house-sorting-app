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

  final _questions = const [
    {
      'questionText': 'Which color do you prefer?',
      'answers': [
        {'text': 'Red', 'score': 4},
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 1},
        {'text': 'Yellow', 'score': 2}
      ]
    },
    {
      'questionText': 'Which animal do you like best?',
      'answers': [
        {'text': 'Badger', 'score': 2},
        {'text': 'Snake', 'score': 1},
        {'text': 'Raven', 'score': 3},
        {'text': 'Lion', 'score': 4}
      ]
    },
    {
      'questionText': 'Which describes you best?',
      'answers': [
        {'text': 'Inquisitive', 'score': 3},
        {'text': 'Doubtful', 'score': 1},
        {'text': 'Brave', 'score': 4},
        {'text': 'Joyful', 'score': 2}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print(score);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('more questions');
    } else {
      print('no more questions!');
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
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
