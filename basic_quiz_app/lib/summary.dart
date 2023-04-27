import 'package:basic_quiz_app/utils.dart';
import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key, required this.summaryData}) : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.60,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 20.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 201, 69, 241),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: GlobalTextStyle.bodyTextStyle),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GlobalTextStyle.bodyTextStyle,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Correct Answer: ${data['correct_answer']}',
                        style: GlobalTextStyle.body3TextStyle,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Your Answer: ${data['user_answer']}',
                        style: GlobalTextStyle.body2TextStyle,
                      ),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
