import 'Question.dart';

// O _ transforma a propriedade em privada

class QuizBrain {
  int _questionIndex = 0;
  List<Question> _questions = [
    Question('O Palmeiras tem mundial.', false),
    Question('O Liverpool já ganhou a Premier League.', false),
    Question('O Brasil é o único penta campeão.', true),
    Question(
        'Iron Maiden é uma banda de heavy metal fundanda na Inglaterra.', true),
    Question('A banda Metallica já teve 4 vocalistas diferentes.', false),
    Question('Os portugueses chegaram no Brasil no mês de abril.', true),
    Question('O último campeão mundial brasileiro foi o Corinthians.', true),
    Question(
        'Swift é uma linguagem de programação voltada para o desenvolvimento de páginas web.',
        false),
    Question(
        'O nome da loja de aplicativos do Android é Google Play Apps', false),
    Question('A primeira universidade do Brasil foi fundada na Bahia.', true),
  ];

  void resetQuiz() {
    _questionIndex = 0;
  }

  bool isFinished() {
    if (_questionIndex == _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void nextQuestion() {
    if (_questionIndex < _questions.length - 1) {
      _questionIndex++;
    }
  }

  String getQuestionText() {
    return _questions[_questionIndex].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionIndex].questionAnswer;
  }
}
