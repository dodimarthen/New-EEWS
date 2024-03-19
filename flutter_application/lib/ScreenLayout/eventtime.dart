import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                style: GoogleFonts.roboto(fontSize: 23.0),
                ),
                subtitle: Text('Showing Real Datetime'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
