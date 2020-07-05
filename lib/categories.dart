import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizify/questionPage.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() {
    return _CategoryState();
  }
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: <Widget>[
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFf45d27), Color(0xFFf5851f)],
                ),
              ),
              child: Row(
                children: <Widget>[
                  Image(
                    image: AssetImage('images/logo5.png'),
                    height: 50,
                  ),
                  Text(
                    'QuiziFy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizApp('_computer')));
                },
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        child: Image(
                          image: AssetImage('images/card1.png'),
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Computer Quiz',
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizApp('_sports')));
                },
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        child: Image(
                          image: AssetImage('images/card5.png'),
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text('Sports Quiz'),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizApp('_space')));
                },
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        child: Image(
                          image: AssetImage('images/card6.png'),
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text('Space Quiz'),
          ],
        ),
      ),
    );
  }
}
