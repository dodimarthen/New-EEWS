import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/MyMapScreen.dart';

class MapCard extends StatelessWidget {
  const MapCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // Handle the tap event, for example, show the map.
          _showMap(context);
        },
        child: Card(
          child: SizedBox(
            width: 360,
            height: 100,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image.asset('assets/img/earthquake.png'),
                  title: Text('MAP GEOLOCATION'),
                  subtitle: Text('EPICENTER OF EARTHQUAKE'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showMap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyMapScreen(),
      ),
    );
  }
}
