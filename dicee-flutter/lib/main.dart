import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title:  const Center(
              child: Text(
            'Dicee',
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.red,
          elevation: 3,
          shadowColor: Colors.black,
        ),
        body:  const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceButton = 1;
  int rightDiceButton = 1;
  void changeDiceFace(){
    leftDiceButton = Random().nextInt(6)+1;
    rightDiceButton = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  changeDiceFace();
                });
              },
              child: Image.asset("images/dice$leftDiceButton.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                setState((){
                  changeDiceFace();
                });
              },
              child: Image.asset("images/dice$rightDiceButton.png"),
            ),
          ),
        ],
      ),
    );
  }
}

