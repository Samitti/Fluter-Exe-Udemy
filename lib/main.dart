import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}


class MyAppState extends State<MyApp> {
  var index = 0;
  var questions = [
      'Whats your ?',
      'How old are you?',
    ];
  void changeQuestion () {
    setState(() {
      index = index + 1;      
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Text(questions[index]),
            RaisedButton(
              onPressed: changeQuestion,
              child: Text('Button 1'),
            ),
            RaisedButton(
              onPressed: changeQuestion,
              child: Text('Button 1'),
            ),
            RaisedButton(
              onPressed: changeQuestion,
              child: Text('Button 1'),
            ),
          ],
        ),
      ),
    );
  }
}
