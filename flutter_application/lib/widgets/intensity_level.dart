import 'package:flutter/material.dart';

class Intensity extends StatelessWidget {
  const Intensity({Key? key});

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
                leading: Image.asset('assets/img/intensity.png'),
                title: Text('INTENSITY LEVEL'),
                subtitle: Text('DAMAGE CAUSED'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
