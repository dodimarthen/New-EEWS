import 'package:flutter/material.dart';

class OriginTime extends StatelessWidget {
  const OriginTime({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 360,
          height: 100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/img/clock_new.png'),
                title: Text('MAP GEOLOCATION'),
                subtitle: Text('EPICENTER OF EARTHQUAKE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
