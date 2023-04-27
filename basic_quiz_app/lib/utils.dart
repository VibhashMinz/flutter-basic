import 'package:flutter/material.dart';

class AssetIcon {
  static const String quizIcon = 'assets/images/quiz-logo.png';
}

class GlobalTextStyle {
  static TextStyle h1TextStyle = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(255, 245, 229, 251),
  );
  static TextStyle h2TextStyle = const TextStyle(
    color: Color.fromARGB(255, 245, 229, 251),
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle h2ColoredTextStyle = const TextStyle(
    color: Color.fromARGB(255, 230, 22, 35),
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle bodyTextStyle = const TextStyle(
    color: Color.fromARGB(255, 245, 229, 251),
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle body2TextStyle = const TextStyle(
    color: Color.fromARGB(255, 249, 197, 183),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle body3TextStyle = const TextStyle(
    color: Color.fromARGB(255, 173, 247, 199),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}
