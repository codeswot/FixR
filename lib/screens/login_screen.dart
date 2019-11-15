import 'package:flutter/material.dart';
import 'package:gyara_01/comp/input_fields.dart';
import 'package:gyara_01/comp/buttons.dart';
import 'package:gyara_01/screens/signup_screen.dart';

class LogIn extends StatefulWidget {
  LogIn({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    final onScreen = Text(
      "Sign In",
      style: TextStyle(
        fontSize: 50.0,
        color: Colors.blue,
      ),
    );

    final emailField = InputField(
      textInput: 'Email',
      secureText: false,
    );

    final passwordField = InputField(
      textInput: 'Password',
      secureText: true,
    );
    final loginButon = PrimaryButton(textOnButton: 'Log in',);
    final signUpButton = Material(
      elevation: 1.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUp(),
            ),
          );
        },
        child: Text(
          "Sign up",
          textAlign: TextAlign.center,
        ),
      ),
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
                  height: 80,
                ),
                SizedBox(
                  height: 200.0,
                  child: Image.asset(
                    'images/bg2.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 0.0),
                onScreen,
                SizedBox(height: 20.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
                signUpButton,
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
