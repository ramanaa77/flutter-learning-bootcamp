import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "I Am Rich",
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Center(
            child: Text("I Am Rich", style: TextStyle(color: Colors.white)),
          ),
          backgroundColor: Colors.blue[400],
        ),
        body: Center(
          child: Image(
            image: AssetImage("images/diamond.png")
          ),
        ),
      ),
    ),
  );
}
