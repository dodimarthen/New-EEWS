import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Earthquake Epicenter Map'),
      ),
      body: MapView(),
    );
  }
}

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (controller) {
        setState(() {
          mapController = controller;
        });
      },
      initialCameraPosition: CameraPosition(
        target: LatLng(-6.262423, 106.815695), //Coordinate example of kemang location
        zoom: 8.0,
      ),
    );
  }
}
