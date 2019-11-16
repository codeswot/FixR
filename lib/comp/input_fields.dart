import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';


class InputField extends StatelessWidget {
  InputField({this.textInput,this.secureText});
  final String textInput;
  final bool secureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: secureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: textInput,
        labelStyle: kInputFont,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
  }
}
