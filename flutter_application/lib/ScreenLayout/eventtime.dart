import 'package:flutter/material.dart';

class realtimeevent extends StatelessWidget {
  const realtimeevent({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset('assets/img/clock.png'),
              title: Text('Event time'),
              subtitle: Text('Showing Real Datetime'),
            ),
          ],
        ),
      ),
    );
  }
}
