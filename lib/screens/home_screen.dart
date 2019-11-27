import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gyara_01/comp/kards.dart';
import 'package:gyara_01/comp/header_profile.dart';
import 'package:gyara_01/globals/const.dart';
import 'package:gyara_01/screens/map_screen.dart';
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

              ],
            ),
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
