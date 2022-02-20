import 'package:flutter/material.dart';
import 'Questions.dart';
import 'Answers.dart';

class Quiz extends StatelessWidget {
  Function pointer;

  // final List<Map<String,Object>> QuestionText;
  var QuestionList;
  int QuestionNo;

  Quiz(this.pointer, this.QuestionList, this.QuestionNo);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(QuestionList[QuestionNo]["Question"]),
        ...(QuestionList[QuestionNo]["Answers"] as List<Map<String, Object>>)
            .map((text) {
          //text can be anything
          return AnswerWidget(
              () => pointer(text["Score"]), text["Text"]); // pointer is pointer
        }).toList(),
      ],
    );
  }
}
