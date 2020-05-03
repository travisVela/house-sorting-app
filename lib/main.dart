import 'package:flutter/material.dart';

import './question.dart';

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
      'Which color do you prefer?',
      'Which animal do you like best?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('House Sorting App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print('Answer 3 chosen'),
            ),
            RaisedButton(
              child: Text('Answer 4'),
              onPressed: () => print('Answer 4 chosen'),
            )
          ],
        ),
      ),
    );
  }
}
