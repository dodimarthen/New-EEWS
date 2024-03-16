import 'package:flutter/material.dart';

class realtimeevent extends StatelessWidget {
  const realtimeevent({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        child: Card(
          elevation: 3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/img/stopwatch.png'),
                title: Text('Event time', 
                style: TextStyle(
                  fontSize: 19.0
                  ),
                  ),
                subtitle: Text('Showing Real Datetime', style: TextStyle(fontSize: 14.0),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
