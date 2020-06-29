import 'package:flutter/material.dart';
import 'package:quizify/main.dart';

import 'categories.dart';
import 'question.dart';

class QuestionList {

  int questionNumber = 0;
  String name;

  List<Question> _computer = [
    Question(ques: 'Freeware is software that is available for use at no monetary cost.', ans: true),
    Question(ques: 'IPv6 Internet Protocol address is represented as eight groups of four Octal digits.', ans: false),
    Question(ques: 'GNU / Linux is a open source operating system.', ans: true),
    Question(ques: 'A compiler is a translation program that converts high-level instructions into a set of binary instructions (machine code) for execution.', ans: true),
    Question(ques: 'MS Word is a hardware.', ans: false),
    Question(ques: 'The language understood by the microprocessor is called assembly language.', ans: false),
    Question(ques: 'Network computing system and client/server computing are interchangeable terms.', ans: true),
  ];

  List<Question> _sports = [
    Question(ques: 'There has never been a woman chess master.', ans: false),
    Question(ques: 'Polo is not an Olympic sport.', ans: true),
    Question(ques: 'In the Tour de France, the winner wears a yellow jersey.', ans: true),
    Question(ques: 'There are six balls in an over.', ans: true),
    Question(ques: 'There are 30 balls in the game of snooker.', ans: false),
    Question(ques: 'Cricket Is Same As Baseball.', ans: false),
    Question(ques: 'Football is played within 540 minutes.', ans: false),
  ];

  List<Question> _space = [
    Question(ques: 'In 1991, there were 60,000 jellyfish orbiting Earth.', ans: true),
    Question(ques: 'The Great Wall of China is the only human-made object you can see from space.', ans: false),
    Question(ques: 'There\'s a class of stars that are just 25ºC.', ans: true),
    Question(ques: 'The sun makes up 99.8% of the mass of the solar system.', ans: true),
    Question(ques: 'The nearest black hole to Earth is just 1,600 light years away.', ans: false),
    Question(ques: 'The sun is yellow.', ans: false),
    Question(ques: 'All of the other planets in the solar system could fit between Earth and the moon.', ans: true),
  ];

  String getQuestion ({String name, int counter}) {
    if (name == '_computer') {
      return _computer[counter].questionText;
    }
    else if (name == '_sports') {
      return _sports[counter].questionText;
    }
    else {
      return _space[counter].questionText;
    }
  }

  bool getAnswer ({String name, int counter}) {
    if (name == '_computer') {
      return _computer[counter].questionAnswer;
    }
    else if (name == '_sports') {
      return _sports[counter].questionAnswer;
    }
    else {
      return _space[counter].questionAnswer;
    }
  }


}


