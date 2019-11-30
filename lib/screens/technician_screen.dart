import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyara_01/comp/technician_card.dart';
import 'package:gyara_01/globals/const.dart';

class TechScreen extends StatefulWidget {
  @override
  _TechScreenState createState() => _TechScreenState();
}

class _TechScreenState extends State<TechScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Icon(Icons.arrow_back),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      'Nearest Technicians',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 30,
                          fontFamily: 'Alata'),
                    ),
                  ),
                ],
              ),
              TechCard(
                profilPic: AssetImage('images/avatar.png'),
                technicianName: 'Musa Zee',
                technicianTitle: 'Mechanic',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star,
                rating5: Icons.star,
                distance: '0.15km',
              ),
              TechCard(
                profilPic: AssetImage('images/avatar.png'),
                technicianName: 'Samuel Soja',
                technicianTitle: 'Electrician',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star_half,
                rating5: Icons.star_border,
                distance: '2km',
              ),
              TechCard(
                profilPic: AssetImage('images/avatar.png'),
                technicianName: 'George Manuel',
                technicianTitle: 'Panel beater',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star,
                rating5: Icons.star_half,
                distance: '2.14km',
              ),
              TechCard(
                profilPic: AssetImage('images/avatar.png'),
                technicianName: 'Muhammad Haris',
                technicianTitle: 'Mechanic',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star,
                rating5: Icons.star,
                distance: '2.15km',
              ),
              TechCard(
                profilPic: AssetImage('images/avatar.png'),
                technicianName: 'Asiya Abdullahi',
                technicianTitle: 'Electrician',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star_half,
                rating4: Icons.star_border,
                rating5: Icons.star_border,
                distance: '5.2km',
              ),
              TechCard(
                profilPic: AssetImage('images/avatar.png'),
                technicianName: 'Yusuf Y. Sani',
                technicianTitle: 'Paint job',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star,
                rating5: Icons.star_half,
                distance: '12.4km',
              ),
              TechCard(
                requestTech: () {},
                profilPic: AssetImage('images/avatar.png'),
                technicianName: 'Usman Dahiru',
                technicianTitle: 'Peugot specialist',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star,
                rating5: Icons.star_half,
                distance: '15.12km',
              ),
              TechCard(
                profilPic: AssetImage('images/avatar.png'),
                technicianName: 'Maryamma Ali',
                technicianTitle: 'Peugot brain box',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star,
                rating5: Icons.star,
                distance: '20.5km',
              ),
            ],
          ).toList(),
        ),
      ),
    );
  }
}
