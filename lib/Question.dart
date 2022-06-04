import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  final String QuestionText;
  Question(this.QuestionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(QuestionText,style:TextStyle(fontSize: 25) ,),
    );
  }
}

