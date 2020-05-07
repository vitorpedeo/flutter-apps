import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play("note$noteNumber.wav");
  }

  Expanded buildKey({int keyNumber, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(keyNumber);
        },
        color: keyColor,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyNumber: 1, keyColor: Colors.red),
              buildKey(keyNumber: 2, keyColor: Colors.orange),
              buildKey(keyNumber: 3, keyColor: Colors.yellow),
              buildKey(keyNumber: 4, keyColor: Colors.green),
              buildKey(keyNumber: 5, keyColor: Colors.teal),
              buildKey(keyNumber: 6, keyColor: Colors.blue),
              buildKey(keyNumber: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
