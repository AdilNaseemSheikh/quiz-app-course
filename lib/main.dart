import 'package:first_flutter_app/Result.dart';

import './Answers.dart';
import 'package:flutter/material.dart';
import './Questions.dart';
import './Quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int QuestionNo = 0;
  int totalScore = 0;

  var questions = [
    {
      "Question": "What is your Name?",
      "Answers": [
        {"Text": "Alan", "Score": 5},
        {"Text": "Jenny", "Score": 5},
        {"Text": "Angel", "Score": 2},
        // {"Text": "Drake", "Score": 6}
      ]
    },
    {
      "Question": "What is your age?",
      "Answers": [
        {"Text": "Below 20", "Score": 3},
        {"Text": "Above 20", "Score": 4},
        {"Text": "Above 30", "Score": 5},
        {"Text": "Above 40", "Score": 6}
      ]
    },
    {
      "Question": "What are you doing these days?",
      "Answers": [
        {"Text": "Study", "Score": 4},
        {"Text": "Job", "Score": 4},
        {"Text": "Business", "Score": 2},
        {"Text": "Free", "Score": 10}
      ]
    },
    {
      "Question": "What is your height?",
      "Answers": [
        {"Text": "5", "Score": 5},
        {"Text": "6", "Score": 6},
        {"Text": "7", "Score": 7},
        {"Text": "8", "Score": 8},
      ]
    },
    {
      "Question": "What is your Qualification?",
      "Answers": [
        {"Text": "Matric", "Score": 10},
        {"Text": "Inter", "Score": 7},
        {"Text": "Graduation", "Score": 2},
        {"Text": "Master", "Score": 0},
      ]
    },
    {
      "Question": "What is your Favourite color?",
      "Answers": [
        {"Text": "Red", "Score": 9},
        {"Text": "Green", "Score": 2},
        {"Text": "Grey", "Score": 5},
        {"Text": "Black", "Score": 7},
      ]
    }
  ];

  void Answer(int score) {
    totalScore += score;
    setState(() {
      //if (QuestionNo < 5)
      QuestionNo++;
    });
  }

  void Reset() {
    setState(() {
      QuestionNo = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: (Text('Quiz App'))),
        body: QuestionNo < questions.length
            ? Quiz(Answer, questions, QuestionNo)
            : Center(
          child: Result(totalScore, Reset),
        ),
      ),
    );
  }
}
