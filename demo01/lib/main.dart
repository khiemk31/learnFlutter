import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionsIndex = 0;
  void answerQuestion() {
    setState(() {
      questionsIndex++;
    });
    print(questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Ét o ét ?',
      'Khi nào bán được 1 tỷ gói mè?',
      'Trả lời?',
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Ung Dung Test 001'),
      ),
      body: Column(
        children: [
          Text(questions[questionsIndex]),
          RaisedButton(
            child: Text('Câu 1'),
            onPressed: () => {
              setState((() {
                questionsIndex = 0;
              }))
            },
          ),
          RaisedButton(
            child: Text('Câu 2'),
            onPressed: () => {
              setState((() {
                questionsIndex = 1;
              }))
            },
          ),
          RaisedButton(
            child: Text('Câu 3'),
            onPressed: () => {
              setState((() {
                questionsIndex = 2;
              }))
            },
          ),
        ],
      ),
    ));
  }
}
