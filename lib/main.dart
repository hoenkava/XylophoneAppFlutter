import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded dontRepeat(Color colour, int soundnum) {
    return Expanded(
      child: FlatButton(
        color: colour,
        onPressed: () {
          playSound(soundnum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .stretch, //cross axis means ki jo main axis h uska opposite jase column ka axis vertical hota hai toh cross axis hua horizontal
            children: <Widget>[
              dontRepeat(Colors.red, 1),
              dontRepeat(Colors.orange, 2),
              dontRepeat(Colors.yellow, 3),
              dontRepeat(Colors.pink, 4),
              dontRepeat(Colors.blue, 5),
              dontRepeat(Colors.brown, 6),
              dontRepeat(Colors.cyan, 7),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.red,
              //     onPressed: () {
              //       playSound(1);
              //     },
              //     child: Text('Click Me'),
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.orange,
              //     onPressed: () {
              //       playSound(2);
              //     },
              //     child: Text('Click Me'),
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.yellow,
              //     onPressed: () {
              //       playSound(3);
              //     },
              //     child: Text('Click Me'),
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.pink,
              //     onPressed: () {
              //       playSound(4);
              //     },
              //     child: Text('Click Me'),
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.blue,
              //     onPressed: () {
              //       playSound(5);
              //     },
              //     child: Text('Click Me'),
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.brown,
              //     onPressed: () {
              //       playSound(6);
              //     },
              //     child: Text('Click Me'),
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.cyan,
              //     onPressed: () {
              //       playSound(7);
              //     },
              //     child: Text('Click Me'),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
