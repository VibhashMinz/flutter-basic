import 'package:basic_quiz_app/data/questions.dart';
import 'package:basic_quiz_app/summary.dart';
import 'package:basic_quiz_app/utils.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {Key? key, required this.chosenAnswer, required this.onTap})
      : super(key: key);

  final List<String> chosenAnswer;
  final void Function() onTap;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20.0),
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
                    text: ' $numCorrectQuestions ',
                    style: GlobalTextStyle.h2ColoredTextStyle),
                const TextSpan(text: 'out of'),
                TextSpan(
                    text: ' $numTotalQuestions  ',
                    style: GlobalTextStyle.h2ColoredTextStyle),
                const TextSpan(text: 'answers correctly!')
              ])),
          const SizedBox(height: 20),
          Summary(
            summaryData: summaryData,
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: onTap, child: const Text('Retake Quiz'))
        ],
      ),
    );
  }
}
