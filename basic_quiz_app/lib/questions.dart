import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({Key? key, required this.questionText}) : super(key: key);
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}
