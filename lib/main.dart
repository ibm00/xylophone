import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildWdget({int sound, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$sound.wav');
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildWdget(sound: 1, color: Colors.red),
                buildWdget(sound: 2, color: Colors.orange),
                buildWdget(sound: 3, color: Colors.yellow),
                buildWdget(sound: 4, color: Colors.green),
                buildWdget(sound: 5, color: Colors.teal),
                buildWdget(sound: 6, color: Colors.blue),
                buildWdget(sound: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
