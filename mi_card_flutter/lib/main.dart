import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("images/anime-boy.jpg"),
              ),
              const Text(
                "Ramanaa",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                    color: Colors.teal[100],
                    letterSpacing: 2,
                    fontFamily: 'Source Code Pro',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              const Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                  ),
                  title: Text("+12 346789012", style: TextStyle(
                      fontFamily: 'Source Code Pro',
                      fontSize: 15
                  ),),
                ),
              ),
              const Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                      Icons.email,
                  ),
                  title: Text("abcdef@gmail.com", style: TextStyle(
                      fontFamily: 'Source Code Pro',
                      fontSize: 15
                  ),),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
