import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';
import 'package:gyara_01/screens/signin_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => LogIn(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/bg2.png',
              scale: 2.6,
            ),
          ),
          Positioned(
            bottom: 25,
//            left: 125,
            child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(left: 125, right: 125),
              child: Text(
                //TODO:Make it a bit faded
                'Gyara',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Alata',
                  color: kPrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
