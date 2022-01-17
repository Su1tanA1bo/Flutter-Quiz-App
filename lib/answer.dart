
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback inputFunction;
  final String answerText;
  Answer(this.inputFunction, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,//double.infinity,
      child: OutlinedButton(
        child: Text(answerText, style: TextStyle(color: Colors.white),),
        onPressed: inputFunction,
        style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 1.0,
              color: Colors.white),),
      ),
    );
  }
}