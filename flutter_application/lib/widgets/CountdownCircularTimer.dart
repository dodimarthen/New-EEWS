import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class CountdownCircularTimerIntensity extends StatefulWidget {
  const CountdownCircularTimerIntensity({Key? key}) : super(key: key);

  @override
  _CountdownCircularTimerIntensityState createState() => _CountdownCircularTimerIntensityState();
}

class _CountdownCircularTimerIntensityState extends State<CountdownCircularTimerIntensity> {
  late AudioPlayer audioPlayer;
  @override
  Widget build(BuildContext context) {
    return TimeCircularCountdown(
      unit: CountdownUnit.second,
      countdownTotal: 10,
      diameter: 220,
      strokeWidth: 33,
      repeat: false,
      countdownRemainingColor: Colors.white,
      countdownCurrentColor: Colors.yellow[600],
      textStyle: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
      onFinished: () async {
        final player = AudioPlayer();
        await player.play(AssetSource('sounds/warning.mp3'));
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Pemberitahuan!'),
              content: const Text('Peringatan dini gempa bumi!'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        },
      );
    }
  }
