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
//              border: Border.all(color: kPrimaryColor),
              boxShadow: [BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
                  spreadRadius: 0.1,
              ),],
              borderRadius: BorderRadius.circular(10.0),
              color: kSecondaryColor,
            ),
            margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  iconz,
                  color: kBlueTextColor,
                  size: 40,
                  semanticLabel: semanticText,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    labelz,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: kBlueTextColor,
                      fontFamily: 'Alata',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
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
//        border: Border.all(color: Colors.green),

          boxShadow: [BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
          ),],
        borderRadius: BorderRadius.circular(10.0),
        color: kPrimaryColor,
      ),
      margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
      padding: EdgeInsets.only(left: 10, right: 15, top: 3),
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
                    color: Colors.white30,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Current Balance',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$3000.00',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Alata'
                    ),
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


