import 'package:basic_quiz_app/utils.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RichText(
              text: TextSpan(
                  text: "You answered",
                  style: GlobalTextStyle.h2TextStyle,
                  children: [
                TextSpan(
                    text: ' X ', style: GlobalTextStyle.h2ColoredTextStyle),
                const TextSpan(text: 'out of'),
                TextSpan(
                    text: ' Y ', style: GlobalTextStyle.h2ColoredTextStyle),
                const TextSpan(text: 'answers correctly!')
              ])),
          const SizedBox(height: 40),
          const SizedBox(height: 40),
          ElevatedButton(onPressed: () {}, child: const Text('Retake Quiz'))
        ],
      ),
    );
  }
}
