import 'package:basic_quiz_app/utils.dart';
import 'package:flutter/material.dart';

class AnswerButtonWidget extends StatelessWidget {
  const AnswerButtonWidget(
      {Key? key, required this.onPressed, required this.answerText})
      : super(key: key);

  final void Function() onPressed;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          backgroundColor: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          answerText,
          style: GlobalTextStyle.bodyTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
