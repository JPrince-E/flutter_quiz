import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key key}) : super(key: key);
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 20) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 35) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz!',
            ),
            /**
              style: ElevatedButton.styleFrom(
                primary: Colors.blue
              ),
            */
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
