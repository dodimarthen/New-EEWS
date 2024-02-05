import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/intensity_level.dart';
import 'package:flutter_application/widgets/map.dart';


class Eews extends StatefulWidget {
  const Eews({super.key});

  @override
  State<Eews> createState() => _EewsState();
}

class _EewsState extends State<Eews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EEWS'),
        backgroundColor: Colors.blue[400]
      ),
      body:const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MapCard(),
          Intensity()
        ],
      ),
    );
  }
}