import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  final String questionText;

  Question(this.questionText);

  @override 
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 75),
      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
      child:Text(
        questionText,
        style: TextStyle(fontSize: 23, color: Colors.white, ),
        textAlign: TextAlign.center,
        
      ),
    );
  }
}