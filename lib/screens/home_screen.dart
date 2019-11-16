import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gyara_01/globals/const.dart';

//TODO: Fancy Navigation
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            //TODO: look for a cleaner way to paint this
            Positioned(
              top: 20,
              right: 20,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/avatar.png'),
                radius: 50,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(30, 35, 240, 5),
                  child: Text(
                    'Welcome,',
                    style: TextStyle(
                      color: kWhiteTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 5, 0, 5),
                  child: Text(
                    'Musa Omar',
                    style: TextStyle(
                      color: kWhiteTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 5, 10, 5),
                  child: Text(
                    'Kaduna, Nigeria',
                    style: TextStyle(
                      color: kWhiteTextColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 5, 10, 5),
                      child: Text(
                        'Browse',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: kWhiteTextColor,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 5, 10, 5),
                      child: Text(
                        'Browse through our available service',
                        style: TextStyle(
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: kWhiteTextColor,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: KSecondaryColor,
                            ),
                            margin: EdgeInsets.fromLTRB(30, 5, 10, 5),
                            padding: EdgeInsets.all(15),
                            width: 15,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.wrench,
                                  color: kBlueTextColor,
                                  size: 40,
                                  semanticLabel: 'Find Mechanic',
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Find',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: kBlueTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'mechanic',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: kBlueTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: KSecondaryColor,
                            ),
                            margin: EdgeInsets.fromLTRB(30, 5, 10, 5),
                            padding: EdgeInsets.all(15),
                            width: 15,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.storeAlt,
                                  color: kBlueTextColor,
                                  size: 40,
                                  semanticLabel: 'Gyara Store',
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Gyara',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: kBlueTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'store',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: kBlueTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
