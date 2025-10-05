import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Dicee',
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.red,
          elevation: 3,
          shadowColor: Colors.black,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(

    );
  }
}

