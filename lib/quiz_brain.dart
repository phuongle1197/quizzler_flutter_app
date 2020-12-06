import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(
        'images/photo1.png', 'Some cats are actually allergic to humans', true),
    Question('images/photo2.png',
        'You can lead a cow down stairs but not up stairs.', false),
    Question('images/photo3.png',
        'Approximately one quarter of human bones are in the feet.', true),
    Question('images/photo4.png', 'A slug\'s blood is green.', true),
    Question('images/photo5.png',
        'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('images/photo6.png',
        'It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'images/photo7.png',
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'images/photo8.png',
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'images/photo9.png',
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'images/photo10.png',
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('images/photo11.jpg', 'Google was originally called \"Backrub\".',
        true),
    Question(
        'images/photo12.jpg',
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'images/photo13.png',
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getImages() {
    return _questionBank[_questionNumber].imageQuiz;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
