import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';
import './answer.dart';
import 'package:quiz_app/question.dart';
import 'quiz.dart';
import './result.dart';

void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
        "QuestionText":"What is the capital city of Australia?",
        "answers":
         [{'text':"Canberra", 'score': 0}, 
        {'text':"Sydney", 'score': 0},
        {'text':"Melbourne", 'score': 1},
        {'text':"Jakarta", 'score': 0}],
    },
    {
        "QuestionText":"What is the largest country in the world by land mass?",
        "answers": [{'text':"Canada", 'score': 0},
        {'text':"China", 'score': 0},
        {'text':"Russia", 'score': 1},
        {'text':"United States of America", 'score': 0},],
    },
    {
        "QuestionText":"Which car manufacturer below originated in Germany?",
        "answers":
         [{'text':"Mercedes-Benz", 'score': 1},
          {'text':"Volvo", 'score': 0},
          {'text':"Nissan", 'score': 0},
          {'text':"Dodge", 'score': 0}],
    },
    {
        "QuestionText":"Which of the countries listed below, belong to the continent Oceania",
        "answers":
         [{'text':"Indonesia", 'score': 0},
          {'text':"India", 'score': 0},
          {'text':"New Zealand", 'score': 1},
          {'text':"Mauritius", 'score': 0}],

    },
    {
        "QuestionText":"Where is Mount Vesuvius located?", 
        "answers":
         [{'text':"Tibet", 'score': 0},
          {'text':"Italy", 'score': 1},
          {'text':"Greece", 'score': 0},
          {'text':"Japan", 'score': 0}],
    }
    ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
    _questionIndex =0;
    _totalScore =0;
    });
  }

  void _answerQuestion(int score)
  {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey
      ),
      home: Scaffold(
        backgroundColor: const Color(0xff1b1b26),
        //appBar: AppBar(
        //  title: Text('Quiz app'),
        //),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
           [_questionIndex < _questions.length?
            Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,)
          : Result(_totalScore, _resetQuiz)]
        ),
      ),
    );
  }
}