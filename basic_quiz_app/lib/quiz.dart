import 'package:basic_quiz_app/question_screen.dart';
import 'package:basic_quiz_app/data/questions.dart';
import 'package:basic_quiz_app/result_screen.dart';
import 'package:basic_quiz_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  /// for storing selected answer by user
  List<String> selectedAnswers = [];

  ///for switching screen
  var activeScreen = 'splash-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = SplashScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 'result-screen') {
      screenWidget = const ResultScreen();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: const BorderSide(color: Colors.white),
            padding: const EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ))),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 40, 2, 75),
                Color.fromARGB(255, 147, 49, 239),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
          // activeScreen == 'splash-screen'
          //     ? SplashScreen(switchScreen)
          //     : const QuestionScreen(),
        ),
      ),
    );
  }
}
