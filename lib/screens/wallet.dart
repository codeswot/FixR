import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';

class MyWallet extends StatefulWidget {
  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Wallet',
          style: TextStyle(fontFamily: 'Alata'),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
//        border: Border.all(color: Colors.green),

                    boxShadow: [
                      BoxShadow(
                        color: kSecondaryShadowColor,
                        blurRadius: 5.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    color: kPrimaryColor,
                  ),
                  margin: EdgeInsets.fromLTRB(15, 25, 0, 25),
                  padding:
                      EdgeInsets.only(left: 10, right: 15, top: 3, bottom: 30),
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
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.account_balance_wallet,
                                  size: 50,
                                  color: kSecondaryColor3,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Current Balance',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Alata',
                                  color: kPrimaryColor2,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'N3000.00',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: kSecondaryColor,
                                  fontFamily: 'Alata',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 110,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kPrimaryColor, //
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[100],
                    ),
                    padding: EdgeInsets.all(7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Add Money',
                          style: TextStyle(
                            fontSize: 20,
                            color: kPrimaryColor2,
                            fontFamily: 'Alata',
                          ),
                        ),
                        Icon(
                          Icons.add,
                          color: kPrimaryColor,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Transaction History',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
