import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQ() {
    questionIndex = questionIndex + 1;
  }

  Widget build(BuildContext context) {
    var questions = [
      'This is Question No 1',
      'This is Question No 2',
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Ocama'),
            ),
            body: Column(children: [
              Text(questions.elementAt(0)),
              RaisedButton(child: Text('Answer 1'), onPressed: null),
              RaisedButton(child: Text('Answer 2'), onPressed: null),
              RaisedButton(child: Text('Answer 3'), onPressed: null),
            ])));
  }
}
