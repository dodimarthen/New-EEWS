  import 'package:flutter/material.dart';
  import 'package:myapp/ScreenLayout/countdowncircular.dart';
  import 'package:myapp/ScreenLayout/appbarlayout.dart';
  import 'package:myapp/ScreenLayout/distancecard.dart';
  import 'package:myapp/ScreenLayout/eventtime.dart';
  import 'package:myapp/ScreenLayout/mapcard.dart';
  import 'package:myapp/ScreenLayout/intensity.dart';

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
              top: 20,
              left: 10,
              right: 10,
              child: MyCircularCountDownTimer(),
            ),
            Positioned(
              top: 230,
              left: 10,
              right: 10,
              child: realtimeevent(),
            ),
             Positioned(
              top: 330,
              left: 10,
              right: 10,
              child: Distance(),
             ),
             Positioned(
              top: 430,
              left: 10,
              right: 10,
              child: shakemap(),
             ),
             Positioned(
              top: 530,
              left: 10,
              right: 10,
              child: intensitymeter(),
             ),
            // Add more Positioned widgets or other widgets as needed
          ],
        ),
      );
    }
  }
