import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:gyara_01/screens/login_screen.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new SplashScreen(
          seconds: 3,
          navigateAfterSeconds: new AfterSplash(),
          title: new Text('WELCOME',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
            ),),
          image: new Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTF8EX78n79ov06gtEWqDw1VGSR9PW-Hna413vC3SaoXE5U1K2q',),
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 100.0,
          onClick: ()=>print("Awesome"),
          loaderColor: Colors.blue,
      ),
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LogIn();
  }
}