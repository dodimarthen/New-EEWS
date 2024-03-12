import 'package:flutter/material.dart';
import 'package:circular_countdown/circular_countdown.dart';

class Countdowncircular extends StatelessWidget {
  const Countdowncircular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimeCircularCountdown(
      unit: CountdownUnit.second,
      countdownTotal: 10,
      diameter: 180,
      repeat: false,
      countdownRemainingColor: Colors.black26,
      countdownCurrentColor: Colors.yellow[600],
      textStyle: TextStyle(fontSize: 40, color: const Color.fromARGB(255, 8, 3, 3), fontWeight: FontWeight.bold),
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
