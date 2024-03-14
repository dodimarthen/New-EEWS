  import 'package:flutter/material.dart';
  import 'package:myapp/ScreenLayout/countdowncircular.dart';
  import 'package:myapp/ScreenLayout/appbarlayout.dart';
import 'package:myapp/ScreenLayout/distancecard.dart';
import 'package:myapp/ScreenLayout/eventtime.dart';
  import 'package:myapp/ScreenLayout/mapcard.dart';

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
          alignment: Alignment.center,
          children: [
            // 4 Card widgets
            Positioned(
              top: 40,
              left: 10,
              right: 10,
              child: MyCircularCountDownTimer(),
            ),
            Positioned(
              top: 260,
              left: 10,
              right: 10,
              child: shakemap(),
            ),
             Positioned(
              top: 345,
              left: 10,
              right: 10,
              child: Distance(),
             ),
             Positioned(
              top: 430,
              left: 10,
              right: 10,
              child: realtimeevent(),
             ),
            // Add more Positioned widgets or other widgets as needed
          ],
        ),
      );
    }
  }
