
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback inputFunction;
  Answer(this.inputFunction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text("answer 1"),
        onPressed: inputFunction,
      ),
    );
  }
}