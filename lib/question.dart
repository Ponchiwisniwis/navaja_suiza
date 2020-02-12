import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}

//9:11 - 38
//8:51 - 40
//93 8:48 - 42
//82 8:47 - 43
//66 8:41 - 45/55
//55 8:44 - 46/55
//48 8:42 - 47/55
//28 8:27 - 50/55
//23 8:37 - 51//55
//15 8:37 - 52/55