// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String abc;

  Questions(this.abc);

  @override
  Widget build(BuildContext context) {
    return Container(
       //color: Colors.green,
      width: double.infinity,
      margin: EdgeInsets.all(15),
     // padding: EdgeInsets.all(0),

      child: Text(
        abc,
        style: TextStyle(
          fontSize: 20,
           //backgroundColor: Colors.red,
          // color: Colors.blueGrey,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
