import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './menu.dart';
import './color.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 19, 19, 19),
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "You Result is",
            style: TextStyle(color: Color.fromARGB(255, 23, 23, 23), fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: TextStyle(
              color: Color.fromARGB(255, 17, 0, 255),
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),

          ElevatedButton(onPressed: (){
             Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainMenu(),
                  ));

          }, child: Text(
              "Reapeat the quizz",
              style: TextStyle(color: Colors.white) )),
         
        ],
      ),
    );
  }
}
