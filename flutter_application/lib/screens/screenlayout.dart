import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/intensity_level.dart';
import 'package:flutter_application/widgets/location.dart';
import 'package:flutter_application/widgets/map.dart';
import 'package:flutter_application/widgets/origintime.dart';
import 'package:flutter_application/widgets/CountdownCircularTimer.dart';



class Eews extends StatefulWidget {
  const Eews({Key? key});

  @override
  State<Eews> createState() => _EewsState();
}

class _EewsState extends State<Eews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EEWS',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.blue[400],
        leading: Image.asset(
          'assets/img/BMG.png',
          width: 10,
          height: 10,
        ),
      ),
      body: Stack(
        children: [
          // 4 Card widgets
          Positioned(
            top: 258,
            left: 10,
            right: 10,
            child: MapCard(
              // Your MapCard widget
            ),
          ),
          Positioned(
            top: 362,
            left: 10,
            right: 10,
            child: Intensity(
              // Your Intensity widget
            ),
          ),
          Positioned(
            top: 465,
            left: 10,
            right: 10,
            child: LocationDistance(
              // Your LocationDistance widget
            ),
          ),
          Positioned(
            top: 568,
            left: 10,
            right : 10,
            child: OriginTime(
              // Your OriginTime widget
            ),
          ),

          // Container on top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 430,
            child: Container(
              color: Colors.redAccent[700],
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  // add CountDown Circular
                  child: CountdownCircularTimerIntensity(
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
