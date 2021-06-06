import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: SafeArea(
        child: new Scaffold(
            appBar: AppBar(
              title: Text(
                'Donut Decisions',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.pink[200],
            ),
            body: DecisionPage()),
      ),
    );
  }
}

class DecisionPage extends StatefulWidget {
  const DecisionPage({Key? key}) : super(key: key);

  @override
  _DecisionPageState createState() => _DecisionPageState();
}

class _DecisionPageState extends State<DecisionPage> {
  int decisionNo = 0;
  String imageName = '.png';
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Title(
              color: Colors.black,
              child: Text(
                "Let's make a donut decision!",
                style: TextStyle(
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.normal,
                    fontSize: 24),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: TextButton(
              child: Stack(
                children: [
                  Container(
                      decoration: new BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      alignment: Alignment.center,
                      height: 240,
                      child: Image.asset('images/donut$imageName',
                          fit: BoxFit.fitHeight)),
                  Align(
                    alignment: Alignment.center,
                    heightFactor: 3,
                    child: Icon(
                      getIcon(decisionNo, isActive),
                      size: 80,
                      color: Colors.pink[200],
                    ),
                  )
                ],
              ),
              onPressed: () {
                setState(() {
                  isActive = false;
                  decisionNo = 4;
                  imageName = '_rotate.gif';
                });
                Future.delayed(Duration(milliseconds: 1000), () {
                  setState(() {
                    decisionNo = randomNumber();
                    isActive = true;
                    imageName = '.png';
                  });
                });
                // updateDice();
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: Text(
              getTitleText(decisionNo),
              style: TextStyle(
                  fontFamily: 'Lobster',
                  fontWeight: FontWeight.normal,
                  fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              getText(decisionNo),
              style: TextStyle(
                fontFamily: 'Lobster',
                fontWeight: FontWeight.normal,
                color: Colors.pink[300],
                fontSize: 36,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0,32,0,8),
            child: TextButton(
              onPressed: () {
                setState(() {
                  decisionNo = 0;
                  imageName = '.png';
                  isActive = false;
                });
              },
              child: Text(getResetText(isActive),
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.black87,
                ),),
            ),
          ),
        ],
      ),
    );
  }
}

int randomNumber() {
  return Random().nextInt(3) + 1;
}

getIcon(decNo, isActive) {
  if (decNo == 3) {
    return Icons.sentiment_satisfied_alt;
  } else if (decNo == 2) {
    return Icons.sentiment_neutral_outlined;
  } else if (decNo == 1) {
    return Icons.sentiment_dissatisfied_outlined;
  } else {
    return Icons.mood;
  }
}

getText(decNo) {
  if (decNo == 3) {
    return "Do it Do it Do it!";
  } else if (decNo == 2) {
    return "Wait and re-think!";
  } else if (decNo == 1) {
    return "Please don't do it!";
  } else if (decNo == 4) {
    return "...";
  } else {
    return '';
  }
}

getTitleText(decNo) {
  if (decNo == 0) {
    return 'Think about it and click on the Donut';
  } else {
    return 'Donut says';
  }
}

getResetText(isActive){
  if(isActive){
    return 'Reset Donut';
  }else{
    return '';
  }
}
