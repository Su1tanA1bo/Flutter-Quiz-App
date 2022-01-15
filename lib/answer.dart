
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback inputFunction;
  final String answerText;
  Answer(this.inputFunction, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: inputFunction,
      ),
    );
  }
}