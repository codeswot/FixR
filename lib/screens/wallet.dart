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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Wallet',
                style: TextStyle(
                  fontSize: kScreenTitle,
                  color: kPrimaryColor,
                  fontFamily: 'Alata',
                ),
              ),
              Text(
                'Under Construction',
                style: TextStyle(
                  fontSize: 17,
                  color: kSecondaryColor2,
                  fontFamily: 'Alata',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
