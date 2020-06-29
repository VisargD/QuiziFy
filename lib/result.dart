import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizify/categories.dart';

int result;
class Result extends StatelessWidget {
  Result(int score) {
    result = score;

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('images/result.png'),
              ),

              Center(
                child: Text(
                  'Congratulations. You scored $result/7.',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFf45d27), Color(0xFFf5851f)],
                  ),
                ),

                child: FlatButton(
                  child: Text(
                    'Go to Category',
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
