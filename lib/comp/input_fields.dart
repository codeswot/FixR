import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';

class InputField extends StatelessWidget {
  InputField({this.textInput, this.secureText});
  final String textInput;
  final bool secureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: new TextStyle(color: kPrimaryShadowColor),
      obscureText: secureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: textInput,
        labelStyle: kInputFont,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide: const BorderSide(color: kPrimaryColor, width: 1.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
  }
}
