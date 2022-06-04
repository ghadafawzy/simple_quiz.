import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final String AnswerText;
  final VoidCallback ? z;
  Answer(this.AnswerText,this.z);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(onPressed: z ,child: Text(AnswerText,style: TextStyle(fontSize: 20),),)
    );
  }
}
