import 'package:flutter/material.dart';
import 'package:my_quiz_app/answer_agian.dart';
import 'package:my_quiz_app/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var C = 0;

  void buttonPressed() {
    setState(() {
      C += 1;
      if (C >= listofquestions.length) {
        C = 0;
      }
    });
  }

  // define a list of questions to be displayed on the screen
  var listofquestions = [
    {
      'questions': "what is your favourite color?",
      'answers': ['red', 'blue', 'green', 'yellow']
    },
    {
      'questions': "what is your fav food?",
      'answers': ['pizza', 'burger', 'pasta', 'noodles']
    },
    {
      'questions': "what is your favourite animal?",
      'answers': ['dog', 'cat', 'rabbit', 'lion']
    },
  ];

  @override
  Widget build(BuildContext context) {
    var currentquestion = listofquestions[C];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("My Quiz App!")),
        body: Column(
          children: <Widget>[
            Question_again(currentquestion['questions'].toString()),
            ...(listofquestions[C]['answers'] as List<String>).map((answer) {
              return Answer_Again(answer, buttonPressed);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
