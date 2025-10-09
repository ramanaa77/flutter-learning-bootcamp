import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Future<void> soundPlay(int soundNumber) async {
    final AudioPlayer player = AudioPlayer();
    await player.play(AssetSource("note$soundNumber.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
