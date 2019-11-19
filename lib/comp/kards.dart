import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';

//my cards as buttons = kards

class Kard extends StatelessWidget {
  Kard(
      {this.iconz,
      this.labelzTop,
      this.labelzBottom,
      this.semanticText,
      @required this.onpush});
  final Function onpush;
  final IconData iconz;
  final String labelzTop;
  final String labelzBottom;
  final String semanticText;
  @override
  Widget build(BuildContext context) {
    return
    GestureDetector(
      onTap: onpush,
      child:
      Container(
      decoration: BoxDecoration(
        boxShadow: [],
        borderRadius: BorderRadius.circular(5.0),
        color: kPrimaryColor,
      ),
      margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
      padding: EdgeInsets.all(15),
      width: 20,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            iconz,
            color: kWhiteTextColor,
            size: 40,
            semanticLabel: semanticText,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            labelzTop,
            style: TextStyle(
              fontSize: 18,
              color: kWhiteTextColor,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            labelzBottom,
            style: TextStyle(
              fontSize: 18,
              color: kWhiteTextColor,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      ),
    );
  }
}
