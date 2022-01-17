import 'package:flutter/material.dart';
import './answer.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
        "QuestionText":"What is the capital city of Australia?",
        "answers": ["Canberra", "Sydney", "Melbourne", "Jakarta"],
    },
    {
        "QuestionText":"What is the largest country in the world by land mass?",
        "answers": ["Canada", "China", "Russia", "United States of America"],
    },
    {
        "QuestionText":"Which car manufacturer below originated in Germany?",
        "answers": ["Mercedes-Benz", "Volvo", "Nissan", "Dodge"],
    },
    {
        "QuestionText":"Which of the countries listed below, belong to the continent Oceania",
        "answers": ["Indonesia", "India", "New Zealand", "Mauritius"],
    },
    {
        "QuestionText":"Where is Mount Vesuvius located?",
        "answers": ["Tibet", "Italy", "Greece", "Japan"],
    }
    ];

  var _questionIndex = 0;

  void _answerQuestion()
  {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: _questionIndex < questions.length? Column(
          children: [
            Question(
              questions[_questionIndex]['QuestionText'] as String
            ),

            ...(questions[_questionIndex]['answers'] as List<String>).map((answer)
            {
               return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ) : Center(child: Text('You did it!'),),
      ),
    );
  }
}