import 'package:flutter/material.dart';

class shakemap extends StatelessWidget {
  const shakemap({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset('assets/img/map.png'),
              title: Text('Earthquake Coordinate'),
              subtitle: Text('Location Coordinates'),
            ),
          ],
        ),
      ),
    );
  }
}
