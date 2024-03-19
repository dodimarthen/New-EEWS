import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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
                title: Text('Earthquake Coordinate',
                style: GoogleFonts.roboto(fontSize: 23.0)),
                subtitle: Text('Epicenter Earthquake'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
