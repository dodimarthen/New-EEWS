import 'package:flutter/material.dart';

class intensitymeter extends StatelessWidget {
  const intensitymeter({Key? key});

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
                leading: Image.asset('assets/img/seismic.png'),
                title: Text('intensity meter', 
                style: TextStyle(
                  fontSize: 22.0
                  ),
                  ),
                subtitle: Text('Location Coordinates'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
