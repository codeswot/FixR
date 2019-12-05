import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';

class Arrival extends StatefulWidget {
  @override
  _ArrivalState createState() => _ArrivalState();
}

class _ArrivalState extends State<Arrival> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Mechanic has Arived!',
        style: TextStyle(
          color: kPrimaryColor,
          fontSize: 25,
          fontFamily: 'Alata',
        ),
      )),
    );
  }
}
