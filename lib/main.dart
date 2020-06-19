import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void buttonPress(int val) {
    final player = AudioCache();
    player.play('note$val.wav');
  }

  BuildKey({Color color, int colorKey}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          this.buttonPress(colorKey);
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
        // appBar: AppBar(
        //   title: Text('hello'),
        // ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildKey(color: Colors.yellow, colorKey: 1),
              BuildKey(color: Colors.blue, colorKey: 2),
              BuildKey(color: Colors.teal, colorKey: 3),
              BuildKey(color: Colors.orange, colorKey: 4),
              BuildKey(color: Colors.purple, colorKey: 5),
              BuildKey(color: Colors.indigo, colorKey: 6),
              BuildKey(color: Colors.green, colorKey: 7),
            ],
          ),
        ),
      ),
    );
  }
}
