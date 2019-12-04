import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: Center(
        child: Text(
          'Comming Soon',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 40,
            fontFamily: 'Alata',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
