import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Center(child: Text("I Am Poor")),
        ),
        body: Center(
          child: Image(image: AssetImage('images/black-brush-stroke.png'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    ),
  );
}
