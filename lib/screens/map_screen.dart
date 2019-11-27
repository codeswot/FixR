import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class MyMapScreen extends StatefulWidget {
  @override
  State<MyMapScreen> createState() => MyMapScreenState();
}

class MyMapScreenState extends State<MyMapScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _home = CameraPosition(
    target: LatLng(10.551020, 7.417470),
    zoom: 16,
  );

  static final CameraPosition _mech = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(10.527680, 7.438570),
      tilt: 30,
      zoom: 17);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _home,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('Mechanic'),
        icon: Icon(FontAwesomeIcons.wrench),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_mech));
  }
}