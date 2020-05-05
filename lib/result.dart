import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 4) {
      resultText = 'You have been sorted to house Slytherin';
    } else if (resultScore >= 5 && resultScore <= 8) {
      resultText = 'You have been sorted to house Hufflepuff';
    } else if (resultScore >= 9 && resultScore <= 12) {
      resultText = 'You have been sorted to house Ravenclaw';
    } else if (resultScore > 12) {
      resultText = 'You have been sorted to house Gryffindor';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}