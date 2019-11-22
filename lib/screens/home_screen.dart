import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gyara_01/comp/kards.dart';
import 'package:gyara_01/globals/const.dart';
import 'package:gyara_01/screens/map_screen.dart';
import 'package:gyara_01/screens/test_screen.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<TitledNavigationBarItem> items = [
    TitledNavigationBarItem(
        iconActive: Icons.settings, iconInActive: Icons.settings),
    TitledNavigationBarItem(
        iconActive: Icons.call_split, iconInActive: Icons.call_split),
    TitledNavigationBarItem(iconActive: Icons.home, iconInActive: Icons.home),
    TitledNavigationBarItem(
        iconActive: Icons.account_balance_wallet,
        iconInActive: Icons.account_balance_wallet),
    TitledNavigationBarItem(
        iconActive: Icons.person_outline, iconInActive: Icons.person_outline),
  ];

  bool navBarMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: new BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                            ),
                          ],
                          color: kSecondaryColor,
                          border: new Border.all(
                              color: Colors.white,
                              width: 1.0,
                              style: BorderStyle.solid),
                          borderRadius: new BorderRadius.only(
                            bottomLeft: new Radius.circular(20.0),
                            bottomRight: new Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 75, 0, 0),
                              child: Text(
                                'Musa Omar',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Alata',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 10, 20),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Kaduna, Nigeria',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Alata',
                                    ),
                                  ),
                                  Icon(
                                    Icons.location_on,
                                    size: 13,
                                    color: Colors.black26,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //TODO: look for a cleaner way to paint this

                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(250, 60, 0, 10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            'images/avatar.png',
                          ),
                          radius: 43,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    CashKard(),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Kard(
                              onpush: () {
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyMapScreen(),
                                    ),
                                  );
                                });
                              },
                              iconz: FontAwesomeIcons.wrench,
                              labelz: "Find Mechanic",
                            ),
                            Kard(
                              onpush: () {},
                              iconz: FontAwesomeIcons.storeAlt,
                              labelz: "Gyara Store",
                            ),
                            Kard(
                              onpush: () {},
                              iconz: FontAwesomeIcons.truck,
                              labelz: "Tow Truck",
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Kard(
                              onpush: () {},
                              iconz: FontAwesomeIcons.compress,
                              labelz: "Tire Fixer",
                            ),
                            Kard(
                              onpush: () {},
                              iconz: FontAwesomeIcons.lightbulb,
                              labelz: "Today\'s Tip",
                            ),
                            Kard(
                              onpush: () {},
                              iconz: FontAwesomeIcons.cookie,
                              labelz: "Car Wash",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: TitledBottomNavigationBar(
        onTap: (index) => print("Selected Index: $index"),
        reverse: navBarMode,
        curve: Curves.easeInBack,
        items: items,
        activeColor: kPrimaryColor,
        inactiveColor: Colors.black38,
      ),
    );
  }
}
