class QuizModel {
  QuizModel(this.question, this.answers);

  final String question;
  final List<String> answers;

  ///to shuffle the answers
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
