import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';



class CountdownCircularTimerIntensity extends StatelessWidget {
  const CountdownCircularTimerIntensity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimeCircularCountdown(
      unit: CountdownUnit.second,
      countdownTotal: 15,
      diameter : 220,
      strokeWidth: 33,
      repeat: true,
      countdownRemainingColor : Colors.white, 
      countdownCurrentColor: Colors.yellow[600],
    );
  }
}
