import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';

class TechCard extends StatelessWidget {
  TechCard({
    this.isavailable,
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
  final Text isavailable;
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
      onTap: requestTech,
      child: Container(
        margin: EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        child: ListTile(
          leading: Container(
            width: 75.0,
            height: 75.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: profilPic,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(3.0),
              ),
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
                  color: kRatingColor,
                ),
                Icon(
                  rating2,
                  color: kRatingColor,
                ),
                Icon(
                  rating3,
                  color: kRatingColor,
                ),
                Icon(
                  rating4,
                  color: kRatingColor,
                ),
                Icon(
                  rating5,
                  color: kRatingColor,
                ),
              ],
            ),
          ),
          trailing: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                isavailable,
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
