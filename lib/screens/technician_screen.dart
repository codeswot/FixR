import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyara_01/comp/technician_card.dart';
import 'package:gyara_01/globals/const.dart';
import 'package:gyara_01/screens/requesting_technician1.dart';

class TechScreen extends StatefulWidget {
  @override
  _TechScreenState createState() => _TechScreenState();
}

class _TechScreenState extends State<TechScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: Text('Mechanics'),
        centerTitle: true,
      ),
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              TechCard(
                isavailable: Text(
                  'Available',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontFamily: 'Alata',
                    fontSize: 12,
                  ),
                ),
                profilPic: AssetImage('images/mech5.jpg'),
                technicianName: 'Musa Z. Usman',
                technicianTitle: 'Mechanic',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star,
                rating5: Icons.star,
                distance: '0.15 km',
                requestTech: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Requesting1();
                      },
                    ),
                  );
                },
              ),
              TechCard(
                isavailable: Text(
                  'Not Available',
                  style: TextStyle(
                      color: kSecondaryColor2,
                      fontFamily: 'Alata',
                      fontSize: 12),
                ),
                profilPic: AssetImage('images/mech1.png'),
                technicianName: 'Samuel Soja',
                technicianTitle: 'Electrician',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star_half,
                rating5: Icons.star_border,
                distance: '2 km',
              ),
              TechCard(
                isavailable: Text(
                  'Not Available',
                  style: TextStyle(
                      color: kSecondaryColor2,
                      fontFamily: 'Alata',
                      fontSize: 12),
                ),
                profilPic: AssetImage('images/mech2.png'),
                technicianName: 'George Manuel',
                technicianTitle: 'Panel beater',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star,
                rating5: Icons.star_half,
                distance: '2.14 km',
              ),
              TechCard(
                isavailable: Text(
                  'Not Available',
                  style: TextStyle(
                      color: kSecondaryColor2,
                      fontFamily: 'Alata',
                      fontSize: 12),
                ),
                profilPic: AssetImage('images/mech3.jpg'),
                technicianName: 'Muhammad Haris',
                technicianTitle: 'Mechanic',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star,
                rating5: Icons.star,
                distance: '2.15 km',
              ),
              TechCard(
                isavailable: Text(
                  'Not Available',
                  style: TextStyle(
                      color: kSecondaryColor2,
                      fontFamily: 'Alata',
                      fontSize: 12),
                ),
                profilPic: AssetImage('images/mech4.jpg'),
                technicianName: 'Abdullahi A.',
                technicianTitle: 'Electrician',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star_half,
                rating4: Icons.star_border,
                rating5: Icons.star_border,
                distance: '5.2 km',
              ),
              TechCard(
                isavailable: Text(
                  'Not Available',
                  style: TextStyle(
                      color: kSecondaryColor2,
                      fontFamily: 'Alata',
                      fontSize: 12),
                ),
                profilPic: AssetImage('images/mech6.jpg'),
                technicianName: 'Yusuf Y. Sani',
                technicianTitle: 'Paint job',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star,
                rating5: Icons.star_half,
                distance: '12.4 km',
              ),
              TechCard(
                isavailable: Text(
                  'Not Available',
                  style: TextStyle(
                      color: kSecondaryColor2,
                      fontFamily: 'Alata',
                      fontSize: 12),
                ),
                requestTech: () {},
                profilPic: AssetImage('images/mech7.jpg'),
                technicianName: 'Usman Dahiru',
                technicianTitle: 'Peugot specialist',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star,
                rating5: Icons.star_half,
                distance: '15.12 km',
              ),
              TechCard(
                isavailable: Text(
                  'Not Available',
                  style: TextStyle(
                      color: kSecondaryColor2,
                      fontFamily: 'Alata',
                      fontSize: 12),
                ),
                profilPic: AssetImage('images/for.jpg'),
                technicianName: 'Maryamma Ali',
                technicianTitle: 'Peugot brain box',
                rating1: Icons.star,
                rating2: Icons.star,
                rating3: Icons.star,
                rating4: Icons.star,
                rating5: Icons.star,
                distance: '20.5 km',
              ),
            ],
          ).toList(),
        ),
      ),
    );
  }
}
