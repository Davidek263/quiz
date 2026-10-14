class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}

const questions = [
  QuizQuestion(
    'Ktorý programovací jazyk používa Flutter?',
    [
      'Dart',
      'Python',
      'Java',
      'C++',
    ],
  ),
  QuizQuestion(
    'Ktorý widget usporiada prvky pod seba?',
    [
      'Column',
      'Row',
      'Text',
      'Image',
    ],
  ),
  QuizQuestion(
    'Ktorá funkcia sa používa na zmenu stavu?',
    [
      'setState()',
      'print()',
      'runApp()',
      'build()',
    ],
  ),
  QuizQuestion(
    'Ktorý widget umožňuje scrollovanie?',
    [
      'SingleChildScrollView',
      'SizedBox',
      'Text',
      'Row',
    ],
  ),
];