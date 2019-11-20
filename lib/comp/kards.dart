import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';

//my cards as buttons = kards

class Kard extends StatelessWidget {
  Kard({this.iconz, this.labelz, this.semanticText, @required this.onpush});
  final Function onpush;
  final IconData iconz;
  final String labelz;
  final String semanticText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpush,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: kPrimaryColor),
              borderRadius: BorderRadius.circular(10.0),
              color: kSecondaryColor,
            ),
            margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
            padding: EdgeInsets.all(15),
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  iconz,
                  color: kBlueTextColor,
                  size: 40,
                  semanticLabel: semanticText,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 5, 0, 0),
            child: Text(
              labelz,
              style: TextStyle(
                fontSize: 15,
                color: kBlueTextColor,
                fontFamily: 'Alata',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CashKard extends StatefulWidget {
  @override
  _CashKardState createState() => _CashKardState();
}

class _CashKardState extends State<CashKard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        boxShadow: [],
        borderRadius: BorderRadius.circular(10.0),
        color: kSecondaryColor,
      ),
      margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
      padding: EdgeInsets.only(left: 10,right: 15,top: 3),
      width: 330,
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.account_balance_wallet,
                size: 50,
                color: Colors.black38,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Account Balance',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '\$3000.00',
                style: TextStyle(fontSize: 20,color: Colors.green),
              ),

            ],
          ),
        ],
      ),
      ],
    ),
    );
  }
}
