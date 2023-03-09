import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final palyer = AudioCache();
    palyer.play('note$soundnumber.wav');
  }

  Expanded musicsound({Color color, int soundnumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundnumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              musicsound(color: Colors.brown[900], soundnumber: 1),
              musicsound(color: Colors.indigo[400], soundnumber: 2),
              musicsound(color: Colors.red[900], soundnumber: 3),
              musicsound(color: Colors.lightGreen[400], soundnumber: 4),
              musicsound(color: Colors.pink[800], soundnumber: 5),
              musicsound(color: Colors.teal[500], soundnumber: 6),
              musicsound(color: Colors.yellow[900], soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
