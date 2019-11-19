import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gyara_01/globals/const.dart';
import 'package:gyara_01/comp/kards.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:gyara_01/screens/map_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //TODO: Use this to navigate
  int _page  ;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        //TODO: use this to navigate
        key: _bottomNavigationKey,
        index: 2,
        height: 55.0,
        items: <Widget>[
          Icon(
            FontAwesomeIcons.list,
            size: kBottomNavIconSize,
            color: kSecondaryColor,
          ),
          Icon(
            FontAwesomeIcons.cog,
            size: kBottomNavIconSize,
            color: kSecondaryColor,
          ),
          Icon(
            FontAwesomeIcons.home,
            size: kBottomNavIconSize,
            color: kSecondaryColor,
          ),
          Icon(
            FontAwesomeIcons.wallet,
            size: kBottomNavIconSize,
            color: kSecondaryColor,
          ),
          Icon(
            FontAwesomeIcons.user,
            size: kBottomNavIconSize,
            color: kSecondaryColor,
          ),
        ],
        color: kPrimaryColor,
        buttonBackgroundColor: kPrimaryColor,
        backgroundColor: kSecondaryColor,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 500),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
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
                  margin: EdgeInsets.fromLTRB(15, 35, 240, 5),
                  child: Text(
                    'Welcome,',
                    style: TextStyle(
                      color: kBlueTextColor,
                      fontSize: 20,
                      fontFamily: 'Alata',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 5, 0, 5),
                  child: Text(
                    'Musa Omar',
                    style: TextStyle(
                      color: kBlueTextColor,
                      fontSize: 25,
                      fontFamily: 'AlataLato',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 5, 10, 0),
                  child: Text(
                    'Kaduna, Nigeria',
                    style: TextStyle(
                      color: kBlueTextColor,
                      fontSize: 10,
                      fontFamily: 'Alata',

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
                      margin: EdgeInsets.fromLTRB(15, 35, 10, 0),
                      child: Text(
                        'Browse',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: 'Alata',
                          color: kBlueTextColor,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 10, 10, 0),
                      child: Text(
                        'Browse through our available services.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Alata',
                          fontSize: 19,
                          color: kBlueTextColor,
                        ),
                      ),
                    ),

                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Kard(
                            onpush: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyMap(),
                                  ),
                                );
                              });
                            },
                            iconz: FontAwesomeIcons.wrench,
                            labelzTop: 'Find',
                            labelzBottom: 'Mechanic',
                            semanticText: 'Find Mechanic',
                          ),
                        ),
                        Expanded(
                          child: Kard(
                            onpush: () {},
                            iconz: FontAwesomeIcons.storeAlt,
                            labelzTop: 'Gyara',
                            labelzBottom: 'Store',
                            semanticText: 'Gyara Store',
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[

                        Expanded(
                          child: Kard(
                            onpush: () {},
                            iconz: FontAwesomeIcons.weight,
                            labelzTop: 'Wheel',
                            labelzBottom: 'Fixer',
                          ),
                        ),
                        Expanded(
                          child: Kard(
                            onpush: () {},
                            iconz: FontAwesomeIcons.gratipay,
                            labelzTop: 'Todays\'s',
                            labelzBottom: 'Tip',
                          ),
                        ),
                        SizedBox(
                          width: 15,
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
