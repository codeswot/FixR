import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';

//Outline Secondary Button

class SecondaryButton extends StatelessWidget {
  SecondaryButton({@required this.onPush,this.textOnButton});
final Function onPush;
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
    highlightColor: Colors.blue[200],
      padding: kButtonPadding,
      onPressed: onPush,
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
  PrimaryButton({this.textOnButton,@required this.onPush});
  final Function onPush;
  final String textOnButton;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      highlightElevation: 0,
      highlightColor: Colors.blue[100],
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      minWidth: MediaQuery.of(context).size.width,
      padding: kButtonPadding,
      onPressed: onPush,
      child: Text( textOnButton,
          style: TextStyle(fontSize: kButtonFontSize,
          color: kWhiteTextColor),
          textAlign: TextAlign.center,

      ),
    );
  }
}
