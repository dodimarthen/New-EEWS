import 'package:flutter/material.dart';

class Intensity extends StatelessWidget {
  const Intensity({Key? key});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset('assets/img/intensity.png'),
              title: Text('MAP GEOLOCATION'),
              subtitle: Text('EPICENTER OF EARTHQUAKE'),
            )
          ],
        )
      ),
    );
  }
}