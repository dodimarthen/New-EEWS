import 'package:flutter/material.dart';
import 'package:circular_countdown/circular_countdown.dart';

class Countdowncircular extends StatelessWidget {
  const Countdowncircular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimeCircularCountdown(
      unit: CountdownUnit.second,
      countdownTotal: 10,
      diameter: 220,
      strokeWidth: 33,
      repeat: false,
      countdownRemainingColor: Colors.black26,
      countdownCurrentColor: Colors.yellow[600],
      textStyle: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
      onFinished: () async {
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
