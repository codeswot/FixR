import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';

class AddsCard extends StatelessWidget {
  AddsCard({this.text1, this.text2, this.text3, this.text4, this.background});
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final ImageProvider background;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Container(
        padding: EdgeInsets.all(
          20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              text1,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 30,
                fontFamily: 'Roboto',
              ),
            ),
            Text(
              text2,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 30,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text3,
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: 11,
                fontFamily: 'Roboto',
              ),
            ),
            Text(
              text4,
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: 11,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
      width: 500.0,
      height: 160.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kSecondaryShadowColor,
            blurRadius: 2,
            spreadRadius: 0.1,
          ),
        ],
        color: Colors.black,
        image: DecorationImage(
          colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(0.6),
            BlendMode.darken, //TODO:think of an awesome ovly
          ),
          fit: BoxFit.cover,
          image: background,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            10.0,
          ),
        ),
      ),
    );
  }
}
