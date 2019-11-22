import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';
import 'package:gyara_01/screens/splash_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gyara',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[100],
        primaryColor: kPrimaryColor,
        cursorColor: kPrimaryColor,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}