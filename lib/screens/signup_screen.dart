import 'package:flutter/material.dart';
import 'package:gyara_01/comp/buttons.dart';
import 'package:gyara_01/comp/input_fields.dart';
import 'package:gyara_01/globals/const.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final onScreen = Text(
      "Sign Up",
      style: TextStyle(
          fontSize: kScreenTitle, color: kPrimaryColor, fontFamily: 'Alata'),
    );

    final nameField = InputField(
      textInput: 'Full Name',
      secureText: false,
    );

    final emailField = InputField(
      textInput: 'Email Address',
      secureText: false,
    );
    final passwordField = InputField(
      textInput: 'Password',
      secureText: true,
    );

    final confirmPasswordField = InputField(
      textInput: "Confirm Password",
      secureText: true,
    );

    final signUpButton = PrimaryButton(
      onPush: () {},
      textOnButton: 'Sign up',
    );
    final loginButton = SecondaryButton(
      onPush: () {
        setState(() {
          Navigator.pop(context);
        });
      },
      textOnButton: 'Sign in',
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                    child: Image.asset(
                      'images/bg2.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  onScreen,
                  SizedBox(height: 25.0),
                  nameField,
                  SizedBox(height: 25.0),
                  emailField,
                  SizedBox(height: 25.0),
                  passwordField,
                  SizedBox(height: 25.0),
                  confirmPasswordField,
                  SizedBox(
                    height: 25.0,
                  ),
                  signUpButton,
                  SizedBox(
                    height: 20.0,
                  ),
                  loginButton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
