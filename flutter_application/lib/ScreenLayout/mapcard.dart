import 'package:flutter/material.dart';

class shakemap extends StatelessWidget {
  const shakemap({Key? key});

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
                leading: Image.asset('assets/img/map.png'),
                title: Text('Earthquake Coordinate', style: TextStyle(fontSize: 19.0),),
                subtitle: Text('Location Coordinates'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
