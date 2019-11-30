import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {}
}

class MyMapScreen extends StatefulWidget {
  MyMapScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyMapScreenState createState() => new _MyMapScreenState();
}

class _MyMapScreenState extends State<MyMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(37.4219999, -122.0862462),
          ),
        ),
      ]),
    );
  }
}
