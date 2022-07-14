import 'package:basic_quiz_app/questions.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practise',
      theme: ThemeData(
        primarySwatch: Colors.amber,

        // scaffoldBackgroundColor: Colors.red,
      ),
      home: const MyHomePage(title: 'Quiz App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;
  static const questions = [
    {
      'questionText': 'What\'s your name?',
      'answer': ['Vibhash', 'Alvien', 'Vivian']
    },
    {
      'questionText': 'Where do you live?',
      'answer': ['Jharkhand', 'Bihar', 'UP']
    },
    {
      'questionText': 'Why are you late?',
      'answer': ['I woke up late', 'Its raining', 'Met an accident']
    }
  ];

  void answerQuestion() {
    if (_questionIndex < questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Question(
              questionText:
                  '${_questionIndex + 1}. ${questions[_questionIndex]['questionText']}',
            ),
            ...(questions[_questionIndex]['answer'] as List<String>).map(
                (answer) => Answer(answer: answer, onPressed: answerQuestion))
            // Answer(
            //   answer: 'Answer 1',
            //   onPressed: answerQuestion,
            // ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
