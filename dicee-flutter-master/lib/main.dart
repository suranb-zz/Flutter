import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dice'),),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber = 1;
  int rightNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  var range = new Random();
                  leftNumber = range.nextInt(6);
                });
                print('Left Button Pressed');
              },
              child: Image.asset(('images/dice$leftNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  var range = new Random();
                  rightNumber = range.nextInt(6);
                });
                rightNumber = 6;
                print("Right Button Pressed");
              },
              child: Image.asset(('images/dice$rightNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}