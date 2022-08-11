import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  // const Quiz({ Key? key }) : super(key: key);
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int qi;
  Quiz(this.questions, this.qi, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(
              questions[qi]['Question'] as String,
            ),
            ...(questions[qi]['answers'] as List<Map<String, Object>>).map((answer){
              return Answer(()=> answerQuestion(answer['score']), answer['text'] as String);
            }).toList(),
            
          ],
        );
  }
}