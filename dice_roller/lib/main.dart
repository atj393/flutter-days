import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: SafeArea(
        child: new Scaffold(
          backgroundColor: Colors.green[800],
          appBar: AppBar(
            backgroundColor: Colors.green[900],
            title: Center(
              child: Text(
                'Dice Roller',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: DicePage(),
        ),
      ),
    );
  }
}

/*
class DicePage extends StatefulWidget {
  int diceNumber = 1;

  @override
  Widget build(BuildContext context) {
    diceNumber = 5;
    return Container(
      margin: standardMargin,
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Container(
                  child: Image.asset('images/dice$diceNumber.png'),
                ),
                onPressed: () {
                  diceNumber = 3;
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Container(
                  child: Image.asset('images/dice$diceNumber.png'),
                ),
                onPressed: () {
                  diceNumber = 2;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumberLeft = 1;
  int diceNumberRight = 1;

  void updateDice() {
    if (diceNumberRight == diceNumberLeft) {
      final snackBar = SnackBar(
        content: Text('Awesome! You did it!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (diceNumberRight - 1 == diceNumberLeft ||
        diceNumberLeft - 1 == diceNumberRight ||
        diceNumberRight + 1 == diceNumberLeft) {
      final snackBar = SnackBar(
        content: Text('Ah Close! Come on you can do it!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: standardMargin,
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Container(
                  child: setImage(diceNumberLeft),
                ),
                onPressed: () {
                  setState(() {
                    diceNumberLeft = randomNumber() + 1;
                  });
                  updateDice();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Container(
                  child: setImage(diceNumberRight),
                ),
                onPressed: () {
                  setState(() {
                    diceNumberRight = randomNumber() + 1;
                  });
                  updateDice();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final standardMargin = EdgeInsets.all(16.0);

int randomNumber() {
  return Random().nextInt(6);
}
dynamic setImage(diceNo){
  return Image.asset('images/dice$diceNo.png');
}

