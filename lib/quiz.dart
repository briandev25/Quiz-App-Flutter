import "package:flutter/material.dart";
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function buttonClicked;
  Quiz({
    @required this.question, 
    @required this.questionIndex, 
    @required this.buttonClicked});
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(question[questionIndex]['Question'],),
             ...(question[questionIndex]['answer'] as List<Map<String, Object>> ).map((answer) {
                 return Answer(() =>buttonClicked(answer['score']), answer['text']);
             } ).toList()
          ],
        );
      
    
  }
}