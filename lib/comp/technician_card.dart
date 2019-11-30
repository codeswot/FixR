import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';

class TechCard extends StatelessWidget {
  TechCard({
    this.requestTech,
    this.profilPic,
    this.technicianName,
    this.technicianTitle,
    this.rating1,
    this.rating2,
    this.rating3,
    this.rating4,
    this.rating5,
    this.distance,
  });
  final Function requestTech;
  final ImageProvider profilPic;
  final String technicianName;
  final String technicianTitle;
  final IconData rating1;
  final IconData rating2;
  final IconData rating3;
  final IconData rating4;
  final IconData rating5;
  final String distance;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        child: ListTile(
          leading: Container(
            width: 100.0,
            height: 150.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: profilPic,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
          title: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  technicianName,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontFamily: 'Alata',
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  technicianTitle,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alata',
                  ),
                ),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
          subtitle: Container(
            child: Row(
              children: <Widget>[
                Icon(
                  rating1,
                  color: Colors.orange,
                ),
                Icon(
                  rating2,
                  color: Colors.orange,
                ),
                Icon(
                  rating3,
                  color: Colors.orange,
                ),
                Icon(
                  rating4,
                  color: Colors.orange,
                ),
                Icon(
                  rating5,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          trailing: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: requestTech,
                  child: Icon(
                    Icons.phone,
                    size: 33,
                    color: kPrimaryColor,
                  ),
                ),
                Text(
                  distance,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
