import 'package:flutter/material.dart';
//import './question.dart';
//import './answer.dart';
import './quiz.dart';
import './result.dart';
//void main(){

// runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
     @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State <MyApp>{
    var questions =[
    {
      'Question': 'What is your favorite tv show',
      'answer': [{'text':'Game of Thrones','score': 10},
      {'text':'Breaking Bad','score':9},
      {'text':'The 100','score':8},
       {'text':'Stranger Things','score':7}]
    },
     {
      'Question': 'What is your favorite animal',
      'answer': [{'text':'Dog','score':10},
      {'text':'Cat','score':9},
      {'text':'Cow','score':6}, 
      {'text':'Snake','score':3}]
    }, {
      'Question': 'What is your favorite color',
      'answer': [{'text':'Black','score':10},
      {'text':'red','score':9},
      {'text':'blue','score':6}, 
      {'text':'yellow','score':3}]
    },

     
     {
      'Question': 'Where was your favorite moment',
      'answer': [{'text':'At School','score':8},
      {'text':'At home','score':10},
      {'text':'At church','score':9}, 
      {'text':'At the club','score':4}]
    },

  ];
  var _total = 0;
  var _questionIndex =0;
   void buttonClicked(int score){

     _total += score;
     setState(() {
       _questionIndex++;
     });
    print(_questionIndex);
  }
  void _restart(){
    setState(() {
      _questionIndex =0;
      _total =0;
    });
  }
  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("My First App"),
          
        ),
        body:_questionIndex < questions.length ? Quiz(question:questions , questionIndex: _questionIndex, buttonClicked: buttonClicked) :Result(_total, _restart)
        ),
      
    );
  }
}