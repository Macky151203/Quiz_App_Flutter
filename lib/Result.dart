import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({ Key? key }) : super(key: key);
  final int resultscore;
  Result(this.resultscore);

  String get ResultPhrase{
    String resulttext;
    if(resultscore==1){
      resulttext='good one';
    }
    else if(resultscore==2){
      resulttext='awesome';
    
    }
    else{
      resulttext='better luck next time';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        ResultPhrase,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
