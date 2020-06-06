import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color, int noteNumber, String noteName}) => Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(noteNumber);
        }, 
        color: color, 
        child: Text(noteName),
      ),
    );
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.purple, noteNumber: 1, noteName: 'C'),
              buildKey(color: Colors.indigo, noteNumber: 2, noteName: 'D'),
              buildKey(color: Colors.blue, noteNumber: 3, noteName: 'E'),
              buildKey(color: Colors.green, noteNumber: 4, noteName: 'F'),
              buildKey(color: Colors.yellow, noteNumber: 5, noteName: 'G'),
              buildKey(color: Colors.orange, noteNumber: 6, noteName: 'A'),
              buildKey(color: Colors.red, noteNumber: 7, noteName: 'B'),
            ],
          ),
        ),
      ),
    );
  }
}