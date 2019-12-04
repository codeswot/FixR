import 'dart:async';
import 'dart:ui' show ImageFilter;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:gyara_01/globals/arrived.dart';
import 'package:gyara_01/globals/const.dart';
import 'package:gyara_01/screens/technician_screen.dart';

class Requesting1 extends StatefulWidget {
  @override
  _Requesting1State createState() => _Requesting1State();
}

class _Requesting1State extends State<Requesting1> {
  Timer _timer;
  int seconds;
  //state button
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Requesting'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
//        child: Card(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5),
              child: ListTile(
                leading: Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/mech5.jpg')),
                    borderRadius: BorderRadius.all(
                      Radius.circular(3.0),
                    ),
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Musa Z. Usman',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: 'Alata',
                      ),
                    ),
                    Text(
                      'Mechanic',
                      style: TextStyle(
                        color: kPrimaryColor2,
                        fontFamily: 'Alata',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                subtitle: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: kRatingColor,
                    ),
                    Icon(
                      Icons.star,
                      color: kRatingColor,
                    ),
                    Icon(
                      Icons.star,
                      color: kRatingColor,
                    ),
                    Icon(
                      Icons.star,
                      color: kRatingColor,
                    ),
                    Icon(
                      Icons.star,
                      color: kRatingColor,
                    ),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '(600+ repairs)',
                      style: TextStyle(
                        color: kSecondaryColor2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
                      child: Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Alata',
                            color: kPrimaryColor),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 5.0, right: 8.0),
                      child: Text(
                        'Mr. Musa Z. Usman is a'
                        ' mechanical engineer with 10 years'
                        ' of experience in the field. He has'
                        ' been fixing cars all over the'
                        ' conutry from lagos to kogi.'
                        ' He is a perfectionist and always'
                        ' puts customer satisfaction over'
                        ' monetary gains. ',
                        style: TextStyle(
                          fontFamily: 'Alata',
                          color: kPrimaryColor2,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          bottom: 5,
                        ),
                        child: Text(
                          'Location',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 18,
                            fontFamily: 'Alata',
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.location_on,
                              size: 20,
                              color: Colors.black26,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, bottom: 7),
                            child: Text(
                              '12 Lagos Street, Kaduna.',
                              style: TextStyle(
                                color: kPrimaryColor2,
                                fontSize: 15,
                                wordSpacing: 2,
                                letterSpacing: 2,
                                fontFamily: 'Alata',
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Card(
                child: Stack(
                  children: <Widget>[
                    GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: LatLng(
                          10.527996,
                          7.4380317,
                        ),
                        zoom: 15.4746,
                        tilt: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Estimated time: ',
                        style: TextStyle(
                            color: kPrimaryColor2, fontFamily: 'Alata'),
                      ),
                      Text(
                        constructTime(seconds),
                        style: TextStyle(
                          fontFamily: 'Alata',
                          color: kSecondaryColor2,
                        ),
                      ),
                      Text(
                        ' min',
                        style: TextStyle(
                          color: kPrimaryColor2,
                          fontFamily: 'Alata',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: OutlineButton(
                padding: EdgeInsets.all(8),
                highlightElevation: 0,
                highlightColor: Colors.white12,
                textColor: kSecondaryColor,
                borderSide: BorderSide(
                  color: pressed ? kSecondaryColor2 : kPrimaryColor,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  setState(() {
                    pressed = !pressed;
                    pressed
                        ? startTimer()
                        : showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              // return object of type Dialog
                              return BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  contentPadding: EdgeInsets.all(15),
                                  content: new Text(
                                    "Are you sure you want to cancel ?",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 25,
                                        fontFamily: 'Alata'),
                                  ),
                                  actions: <Widget>[
                                    // usually buttons at the bottom of the dialog
                                    new FlatButton(
                                      child: new Text(
                                        "No",
                                        style: TextStyle(
                                          color: kPrimaryColor,
                                          fontFamily: 'Alata',
                                          fontSize: 18,
                                        ),
                                      ),
                                      onPressed: () {
                                        pressed = true;
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    new FlatButton(
                                      child: new Text(
                                        "Yes",
                                        style: TextStyle(
                                          color: kSecondaryColor2,
                                          fontFamily: 'Alata',
                                          fontSize: 18,
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          cancelTimer();
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  TechScreen(),
                                            ),
                                          );
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                  });
                },
                color: kPrimaryColor,
                child: Text(
                  pressed ? 'Cancel' : 'Request',
                  style: pressed
                      ? TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          color: kSecondaryColor2)
                      : TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          color: kPrimaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
//      ),
    );
  }

  // Time formatting, converted to the corresponding hh:mm:ss format according to the total number of seconds
  String constructTime(int seconds) {
//    int hour = seconds ~/ 3600;
    int minute = seconds % 3600 ~/ 60;
    int second = seconds % 60;
    return /*formatTime(hour) +*/
        /* ":" +*/
        formatTime(minute) + ":" + formatTime(second);
  }

  // Digital formatting, converting 0-9 time to 00-09
  String formatTime(int timeNum) {
    return timeNum < 10 ? "0" + timeNum.toString() : timeNum.toString();
  }

  @override
  void initState() {
    super.initState();
    // Get the current time
    var now = DateTime.now();
    // Get a 1-minute interval
    var twoHours = now.add(Duration(seconds: 60)).difference(now);
    // Get the total number of seconds, 1 minutes for 120 seconds
    seconds = twoHours.inSeconds;
  }

  void startTimer() {
    // Set 1 second callback
    const period = const Duration(seconds: 1);
    _timer = Timer.periodic(period, (timer) {
      // Update interface
      setState(() {
        // minus one second because it calls back once a second
        seconds--;
      });
      if (seconds == 0) {
        // Countdown seconds 0, cancel timer
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Arrival(),
            ),
          );
        });
        cancelTimer();
      }
    });
  }

  void cancelTimer() {
    if (_timer != null) {
      _timer.cancel();
      seconds = 0;

      _timer = null;
    }
  }

  @override
  void dispose() {
    super.dispose();

    cancelTimer();
  }
}
