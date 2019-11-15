import 'package:flutter/material.dart';


class InputField extends StatelessWidget {
  InputField({this.textInput,this.secureText});
  final String textInput;
  final bool secureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: textInput,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
  }
}
