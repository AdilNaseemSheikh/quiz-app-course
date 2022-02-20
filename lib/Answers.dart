import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  Function pointer;
  String answers;
  AnswerWidget(this.pointer,this.answers);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10,top: 0,right: 10,bottom: 0),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answers),
        textColor: Colors.white,
        onPressed: pointer,
      ),
    );
  }
}
