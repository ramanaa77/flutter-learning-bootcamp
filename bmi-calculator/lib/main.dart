import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF090C22),
          elevation: 4,
          centerTitle: true,
          shadowColor: Colors.black,
        ),
        scaffoldBackgroundColor: Color(0xff090d20),
      ),
      home: InputPage(),
    );
  }
}


