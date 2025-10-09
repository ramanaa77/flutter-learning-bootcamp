import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final AudioPlayer player = AudioPlayer();

  Future<void> soundPlay(int soundNumber) async {
    await player.stop();
    await player.play(AssetSource("note$soundNumber.wav"));
  }

  Expanded buildKey({required Color color, required int soundNumber}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () {
          soundPlay(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildKey(color: Colors.red,soundNumber: 1),
              buildKey(color: Colors.orange,soundNumber: 2),
              buildKey(color: Colors.yellow,soundNumber: 3),
              buildKey(color: Colors.green,soundNumber: 4),
              buildKey(color: Colors.teal,soundNumber: 5),
              buildKey(color: Colors.blue,soundNumber: 6),
              buildKey(color: Colors.purple,soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
