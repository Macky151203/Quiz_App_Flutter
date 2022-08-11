import 'package:flutter/material.dart';
// import 'package:trial/question.dart';
import './Quiz.dart';
import './Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // const MyApp({ Key? key }) : super(key: key);
  final questions = [
    {
      'Question': 'How many states are there in india?',
      'answers': [
        {'text': '28', 'score': 1},
        {'text': '27', 'score': 0},
        {'text': '26', 'score': 0}
      ],
    },
    {
      'Question': 'whats the round of value of bitcoin?',
      'answers': [{'text':'20L', 'score': 1}, 
      {'text':'10L', 'score':0},
       {'text' :'30L', 'score':0}],
    },
  ];
  var qi = 0;
  var totalScore=0;

  void answerQuestion(int score) {
    totalScore = totalScore + score;
    setState(() { 
      qi = qi + 1;
    });
    print('answer choosen!!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my first app"),
        ),
        body: qi < questions.length
            ? Quiz(questions, qi, answerQuestion)
            : Result(totalScore),
      ),
    );
  }
}
