import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  //constructor
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    var resultText = "Results: ${resultScore}/5";

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
            ),
            ElevatedButton(onPressed: resetHandler, child: Text("Restart Quiz"))
        ],
      )
    );
  }
}