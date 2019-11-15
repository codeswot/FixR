import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';

//Outline Secondary Button

class SecondaryButton extends StatelessWidget {
  SecondaryButton({this.textOnButton});
  
  final String textOnButton;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      borderSide: BorderSide(
        color: Color(0xff01A0C7),
        style: BorderStyle.solid,
        width: 1,
      ),
      splashColor: Color(0xff01A0C7),
      padding: kButtonPadding,
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        textOnButton,
        style: TextStyle(
          fontSize: kButtonFontSize,
          color: kBlueTextColor
        ),
        textAlign: kAlignText,
      ),
    );
  }
}

//full Primary button
class PrimaryButton extends StatelessWidget {
  PrimaryButton({this.textOnButton});
  final String textOnButton;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      highlightElevation: 0,
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      minWidth: MediaQuery.of(context).size.width,
      padding: kButtonPadding,
      onPressed: () {},
      child: Text( textOnButton,
          style: TextStyle(fontSize: kButtonFontSize,
          color: kWhiteTextColor),
          textAlign: TextAlign.center,

      ),
    );
  }
}
