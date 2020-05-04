import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(HouseSortingApp());

class HouseSortingApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HouseSortingAppState();
  }
}

class _HouseSortingAppState extends State<HouseSortingApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Which color do you prefer?', 
        'answers': [
        'Red', 'Blue', 'Green', 'Yellow'
        ]
      },
      {
        'questionText': 'Which animal do you like best?',
        'answers': [
          'Badger', 'Snake', 'Raven', 'Lion'
        ]
      },
      {
        'questionText': 'Which describes you best?',
        'answers': [
          'Inquisitive', 'Doubtful', 'Brave', 'Joyful'
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('House Sorting App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText']
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
