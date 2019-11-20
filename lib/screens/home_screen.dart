import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gyara_01/comp/kards.dart';
import 'package:gyara_01/globals/const.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';


class HomeScreen extends StatefulWidget {
  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<TitledNavigationBarItem> items = [
    TitledNavigationBarItem(iconActive: Icons.settings, iconInActive: Icons.settings),
    TitledNavigationBarItem(iconActive: Icons.call_split, iconInActive: Icons.call_split),
    TitledNavigationBarItem(iconActive: Icons.home, iconInActive: Icons.home),
    TitledNavigationBarItem(iconActive: Icons.account_balance_wallet, iconInActive: Icons.account_balance_wallet),
    TitledNavigationBarItem(iconActive: Icons.person_outline, iconInActive: Icons.person_outline),
  ];

  bool navBarMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                CashKard(),
                SizedBox(
                  height: 60,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[


                    Row(
                      children: <Widget>[
                        Kard(
                          onpush: () {},
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
                          labelz: "Something cool",
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
        inactiveColor: Colors.blueGrey,
      ),
    );
  }
}