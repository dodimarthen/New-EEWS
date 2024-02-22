import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';

class CountdownCircularTimerIntensity extends StatelessWidget {
  const CountdownCircularTimerIntensity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimeCircularCountdown(
      unit: CountdownUnit.second,
      countdownTotal: 14,
      countdownRemainingColor : Colors.yellow,
      countdownCurrentColor: Colors.grey,
      onUpdated: (unit, remaining) => print('Updated'),
      onFinished: () => print('Countdown Finished'),
    );
  }
}
