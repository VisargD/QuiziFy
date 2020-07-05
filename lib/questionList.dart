import 'question.dart';

class QuestionList {
  List<Question> _computer = [
    Question(
        'Freeware is software that is available for use at no monetary cost.',
        true),
    Question(
        'IPv6 Internet Protocol address is represented as eight groups of four Octal digits.',
        false),
    Question('GNU / Linux is a open source operating system.', true),
    Question(
        'A compiler is a translation program that converts high-level instructions into a set of binary instructions (machine code) for execution.',
        true),
    Question('MS Word is a hardware.', false),
    Question(
        'The language understood by the microprocessor is called assembly language.',
        false),
    Question(
        'Network computing system and client/server computing are interchangeable terms.',
        true),
  ];

  List<Question> _sports = [
    Question('There has never been a woman chess master.', false),
    Question('Polo is not an Olympic sport.', true),
    Question('In the Tour de France, the winner wears a yellow jersey.', true),
    Question('There are six balls in an over.', true),
    Question('There are 30 balls in the game of snooker.', false),
    Question('Cricket Is Same As Baseball.', false),
    Question('Football is played within 540 minutes.', false),
  ];

  List<Question> _space = [
    Question('In 1991, there were 60,000 jellyfish orbiting Earth.', true),
    Question(
        'The Great Wall of China is the only human-made object you can see from space.',
        false),
    Question('There\'s a class of stars that are just 25ºC.', true),
    Question('The sun makes up 99.8% of the mass of the solar system.', true),
    Question('The nearest black hole to Earth is just 1,600 light years away.',
        false),
    Question('The sun is yellow.', false),
    Question(
        'All of the other planets in the solar system could fit between Earth and the moon.',
        true),
  ];

  String getQuestion({String name, int counter}) {
    if (name == '_computer') {
      return _computer[counter].questionText;
    } else if (name == '_sports') {
      return _sports[counter].questionText;
    } else {
      return _space[counter].questionText;
    }
  }

  bool getAnswer({String name, int counter}) {
    if (name == '_computer') {
      return _computer[counter].questionAnswer;
    } else if (name == '_sports') {
      return _sports[counter].questionAnswer;
    } else {
      return _space[counter].questionAnswer;
    }
  }
}
