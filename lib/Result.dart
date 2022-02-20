import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int MyScore;
  final Function reset;

  Result(this.MyScore, this.reset);

  String get resultText {
    //String text;
    if (MyScore <= 20)
      return "You are Awesome!";
    else if (MyScore <= 35) {
      return "You are too Innocent!";
    } else if (MyScore <= 45) {
      return "You are Strange!";
    } else
      return "You are Worst!";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultText,
          style: TextStyle(fontSize: 30),
        ),
        FlatButton(
            onPressed: reset,
            child: Container(
              child: Text(
                "Reset",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 22,
                ),
              ),
            )),
        Text("Your Score is $MyScore"),
      ],
    ));
  }
}
