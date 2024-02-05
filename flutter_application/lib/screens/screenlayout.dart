import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/intensity_level.dart';
import 'package:flutter_application/widgets/location.dart';
import 'package:flutter_application/widgets/map.dart';
import 'package:flutter_application/widgets/origintime.dart';

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
        title: const Text('EEWS'),
        backgroundColor: Colors.blue[400],
      ),
      body: Stack(
        children: [
          // 4 Card widgets
          Positioned(
            top: 200,
            left: 10,
            child: MapCard(
              // Your MapCard widget
            ),
          ),
          Positioned(
            top:320,
            left: 10,
            child: Intensity(
              // Your Intensity widget
            ),
          ),
          Positioned(
            top: 440,
            right: 10,
            child: LocationDistance(
              // Your LocationDistance widget
            ),
          ),
          Positioned(
            top: 560,
            right: 10,
            child: OriginTime(
              // Your OriginTime widget
            ),
          ),
          
          // Container on top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 500,
            child: Container(
              height: 180,
              color: Colors.orange,
              // Customize your container here
            ),
          ),
        ],
      ),
    );
  }
}