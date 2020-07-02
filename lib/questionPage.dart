import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizify/questionList.dart';
import 'package:quizify/result.dart';
import 'questionList.dart';

QuestionList questionList = QuestionList();
String lname;

class QuizApp extends StatelessWidget {
  QuizApp(String name) {
    lname = name;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: QuizPage(lname),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  String listname;

  QuizPage(String name) {
    listname = name;
  }

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  int correct = 0;
  int questionNumber = 0;
  List<Icon> scoreKeeper = [];

  void nextQuestion(context, correct) {
    if (questionNumber < 6) {
      questionNumber++;
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Result(correct)));
    }
  }

  void checkAnswer({QuestionList obj, bool answer, int counter}) {
    if (obj.getAnswer(name: lname, counter: counter) == answer) {
      correct++;
      scoreKeeper.add(Icon(
        Icons.check,
        color: Colors.green,
      ));
    }
    else {
      scoreKeeper.add(Icon(
        Icons.close,
        color: Colors.red,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(

          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFf45d27), Color(0xFFf5851f)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image(
              image: AssetImage('images/logo5.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                width: 300,
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        questionList.getQuestion(
                            name: lname, counter: questionNumber),
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.green, Colors.lightGreen],
                        ),
                      ),
                      child: FlatButton(

                        onPressed: () {
                          checkAnswer(
                              obj: questionList,
                              answer: true,
                              counter: questionNumber);
                          setState(() {
                            nextQuestion(context, correct);
                          });
                        },
                        child: Text('True'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.red, Colors.red.shade500],
                        ),
                      ),
                      child: FlatButton(

                        onPressed: () {
                          checkAnswer(
                              obj: questionList,
                              answer: false,
                              counter: questionNumber);
                          setState(() {
                            nextQuestion(context, correct);
                          });
                        },
                        child: Text('False'),
                      ),
                    ),
                    Row(
                      children: scoreKeeper,
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


