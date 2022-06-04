import 'package:flutter/material.dart';
import 'Answer.dart';
import 'Question.dart';
import 'Result.dart';

void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x=0;
  Addx(){
    setState(() {
      x++;
    });
  }
  ResetApp(){
    setState(() {
      x=0;
    });
  }
  var list11=["Public Information","Medicine","Geography","Sport","Public Information","Quiz App"];

  var list=[
    {
      'qu':'How many teeth does a cat have?',
      'an':['40','20','50','none of the above']
    },
    {
      'qu':'How many red blood cells can the body produce per day?',
      'an':['300 million','200 million','500 million','none of the above']
    },
    {
      'qu':'What is the precentage of water from the globe?',
      'an':['71%','50%','90%','none of the above']
    },
    {
      'qu':'How many players does the basketball team make? ',
      'an':['11','9','5','none of the above']
    },
    {
      'qu':'What is called Mars?',
      'an':['The red planet','The black planet','The blue planet','none of the above']
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(list11[x],style: TextStyle(fontSize: 25),),),
        ),
        body: Container(
          width: double.infinity,
          child:x<list.length? Column(
            children: [
              Question(list[x]['qu']as String),
              ...(list[x]['an']as List<String>).map((answer){
                return Answer(answer, Addx);
              }).toList(),
            ],
          ):Result(ResetApp),
        ),
      ),
    );
  }
}