import 'package:flutter/material.dart';
import 'package:myapp/ScreenLayout/countdowncircular.dart';
import 'package:myapp/ScreenLayout/appbarlayout.dart';

class Eews extends StatefulWidget {
  const Eews({Key? key});

  @override
  State<Eews> createState() => _EewsState();
}

class _EewsState extends State<Eews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarEEWS(),
      body: Stack(
        children: [
          // 4 Card widgets
          Positioned(
            top: 258,
            left: 10,
            right: 10,
            child: Countdowncircular(),
          ),
          // Add more Positioned widgets or other widgets as needed
        ],
      ),
    );
  }
}
