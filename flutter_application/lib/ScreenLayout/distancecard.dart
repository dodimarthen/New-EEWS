import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Distance extends StatelessWidget {
  const Distance({Key? key});

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
                leading: Image.asset('assets/img/map_717498.png'),
                title: Text('Distance with you',
                style: GoogleFonts.roboto(fontSize: 23.0)
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
