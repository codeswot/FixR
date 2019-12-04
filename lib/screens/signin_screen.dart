import 'package:flutter/material.dart';
import 'package:gyara_01/comp/buttons.dart';
import 'package:gyara_01/comp/input_fields.dart';
import 'package:gyara_01/globals/const.dart';
import 'package:gyara_01/screens/home_screen.dart';
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
        fontFamily: 'Alata',
        fontSize: kScreenTitle,
        color: kPrimaryColor,
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
    final loginButon = PrimaryButton(
      onPush: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        });
      },
      textOnButton: 'Sign in',
    );
    final signUpButton = SecondaryButton(
      onPush: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUp(),
            ),
          );
        });
      },
      textOnButton: 'Sign up',
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: kSecondaryColor,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                    height: 100.0,
                    child: Image.asset(
                      'images/bg2.png',
//                      scale: 20,
                      fit: BoxFit.contain,
                    ),
                  ),
                  onScreen,
                  SizedBox(height: 25.0),
                  emailField,
                  SizedBox(height: 25.0),
                  passwordField,
                  SizedBox(
                    height: 30.0,
                  ),
                  loginButon,
                  SizedBox(
                    height: 20.0,
                  ),
                  signUpButton,
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        color: kSecondaryColor2,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
