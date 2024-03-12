import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class MyCircularCountDownTimer extends StatefulWidget {
  const MyCircularCountDownTimer({Key? key}) : super(key: key);

  @override
  _MyCircularCountDownTimerState createState() => _MyCircularCountDownTimerState();
}

class _MyCircularCountDownTimerState extends State<MyCircularCountDownTimer> {
  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: 10,
      initialDuration: 0,
      controller: CountDownController(),
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 4,
      ringColor: Colors.blueGrey.shade900,
      ringGradient: null,
      fillColor: Colors.yellow.shade700,
      fillGradient: null,
      backgroundColor: Colors.blueGrey.shade900,
      backgroundGradient: null,
      strokeWidth: 10.0,
      strokeCap: StrokeCap.round,
      textStyle: TextStyle(fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
      textFormat: CountdownTextFormat.S,
      isReverse: true,
      isReverseAnimation: true,
      isTimerTextShown: true,
      autoStart: true,
      onComplete: () async {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Pemberitahuan!'),
            content: const Text('Peringatan dini gempa bumi!'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'OK');
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}