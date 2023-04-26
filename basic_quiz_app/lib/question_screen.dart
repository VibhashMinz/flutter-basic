import 'package:basic_quiz_app/answer_button_widget.dart';
import 'package:basic_quiz_app/data/questions.dart';
import 'package:basic_quiz_app/utils.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    Key? key,
    required this.onSelectAnswer,
  }) : super(key: key);
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.question,
            style: GlobalTextStyle.h2TextStyle,
            //textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.getShuffledAnswers().map(
                (ans) => AnswerButtonWidget(
                    onPressed: () => answerQuestion(ans), answerText: ans),
              )
          // .toList()
        ],
      ),
    );
  }
}
