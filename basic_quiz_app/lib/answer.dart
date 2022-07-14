import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function() onPressed;
  const Answer({
    Key? key,
    required this.answer,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(answer),
    );
  }
}
