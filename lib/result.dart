import 'package:flutter/material.dart';

class Result extends StatelessWidget {
   final int total;
   final Function restart;

   Result(this.total,this.restart);

 
 String get resultPhrase{
   String resultText;

   if(total<=18){
     resultText = 'You are weird';
   }else if(total<=25){
     resultText ="You are relateable";
   }else if(total<=35){
      resultText ="You are awesome";
   }else{
      resultText ="You are a genius of different level";
   }
   return resultText;
 }

  @override
  Widget build(BuildContext context) {
    return  Center(
          child:
           Column(
             children: <Widget>[
               Text(resultPhrase,
               textAlign: TextAlign.center,
               style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
               ),
          ),
          FlatButton(onPressed: restart, 
          child: Text('Restart Quiz. '),
          textColor: Colors.blue,),
             ],
           ),
    );
  }
}