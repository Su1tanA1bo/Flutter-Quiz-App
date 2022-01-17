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
          Container(
            margin: EdgeInsets.all(50),
            child: Text(
              resultPhrase, 
              style: TextStyle(fontSize: 36, color: Colors.white),
              ),
          ),
            OutlinedButton(
              onPressed: resetHandler,
              child: Text("Restart Quiz", style: TextStyle(color: Colors.white),),
              style: OutlinedButton.styleFrom(
              side: BorderSide(
                width: 1.0,
                color: Colors.white),
                
              ),
            )
        ],
      )
    );
  }
}