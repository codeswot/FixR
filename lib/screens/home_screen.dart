import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gyara_01/comp/adds_card.dart';
import 'package:gyara_01/comp/header_profile.dart';
import 'package:gyara_01/comp/kards.dart';
import 'package:gyara_01/globals/const.dart';
import 'package:gyara_01/screens/technician_screen.dart';
import 'package:gyara_01/screens/test_screen.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<TitledNavigationBarItem> items = [
    TitledNavigationBarItem(
//      onPressed: () {
//        setState(() {
//          Navigator.push(
//              context, MaterialPageRoute(builder: (context) => Test()));
//        });
//      },
      iconActive: Icons.settings,
      iconInActive: Icons.settings,
    ),
    TitledNavigationBarItem(
      iconActive: Icons.call_split,
      iconInActive: Icons.call_split,
    ),
    TitledNavigationBarItem(
      iconActive: Icons.home,
      iconInActive: Icons.home,
    ),
    TitledNavigationBarItem(
        iconActive: Icons.account_balance_wallet,
        iconInActive: Icons.account_balance_wallet),
    TitledNavigationBarItem(
      iconActive: Icons.person_outline,
      iconInActive: Icons.person_outline,
    ),
  ];

  bool navBarMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO:Look for a way to make header sticky?
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            SizedBox(
              height: 30,
            ),
            Column(
              children: <Widget>[
                CashKard(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Kard(
                          onpush: () {
                            setState(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TechScreen(),
                                  ),
                                );
                              },
                            );
                          },
                          iconz: FontAwesomeIcons.wrench,
                          labelz: "Find Mechanic",
                        ),
                        Kard(
                          onpush: () {
                            setState(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Test(),
                                  ),
                                );
                              },
                            );
                          },
                          iconz: FontAwesomeIcons.storeAlt,
                          labelz: "Gyara Store",
                        ),
                        Kard(
                          onpush: () {
                            setState(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Test(),
                                  ),
                                );
                              },
                            );
                          },
                          iconz: FontAwesomeIcons.truck,
                          labelz: "Tow Truck",
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Kard(
                          onpush: () {
                            setState(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Test(),
                                  ),
                                );
                              },
                            );
                          },
                          iconz: Icons.trip_origin,
                          labelz: "Tire Fixer",
                        ),
                        Kard(
                          onpush: () {
                            setState(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Test(),
                                  ),
                                );
                              },
                            );
                          },
                          iconz: Icons.lightbulb_outline,
                          labelz: "Today\'s Tip",
                        ),
                        Kard(
                          onpush: () {
                            setState(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Test(),
                                  ),
                                );
                              },
                            );
                          },
                          iconz: Icons.local_car_wash,
                          labelz: "Car Wash",
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  AddsCard(
                    text1: 'Explore the ',
                    text2: 'world of cars',
                    text3: 'News about the latest trends in the',
                    text4: 'automobile industry',
                    background: AssetImage('images/ad1.jpg'),
                  ),
                  AddsCard(
                    text1: 'Get Your ',
                    text2: 'Car Wash',
                    text3: 'New Discount get car wash',
                    text4: 'on repairs above N1000',
                    background: AssetImage('images/ad2.jpg'),
                  ),
                  AddsCard(
                    text1: 'Free ',
                    text2: 'Tire Fix',
                    text3: 'Free tire fix evry saturday ',
                    text4: 'on repairs above N200',
                    background: AssetImage('images/ad3.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
//TODO: Find a good way to do this
      bottomNavigationBar: TitledBottomNavigationBar(
        onTap: (index) => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Test(),
          ),
        ),
        reverse: navBarMode,
        curve: Curves.easeInBack,
        items: items,
        activeColor: kPrimaryColor,
        inactiveColor: kPrimaryColor2,
      ),
    );
  }
}
