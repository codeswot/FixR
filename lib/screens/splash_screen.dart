import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';
import 'package:gyara_01/screens/login_screen.dart';

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
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 130,
          ),
          SizedBox(
            width: 300,
            child: Container(
              margin: EdgeInsets.only(
                left: 50,
              ),
              child: Image.asset(
                'images/bg2.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 50,
            ),
            child: Text(
              'GeeksAxis',
              style: TextStyle(
                color: kBlueTextColor,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
                fontSize: kButtonFontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
