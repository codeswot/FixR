import 'package:flutter/material.dart';

//Outline Button

class ButtonWithOutline extends StatelessWidget {
  const ButtonWithOutline({
    Key key,
    @required this.style,
  }) : super(key: key);

  final TextStyle style;

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
      padding: EdgeInsets.fromLTRB(110.0, 15.0, 110.0, 15.0),
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Sign in",
          textAlign: TextAlign.center,
          style:
          style.copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
    );
  }
}