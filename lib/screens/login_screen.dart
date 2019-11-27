import 'package:flutter/material.dart';
import 'package:gyara_01/comp/input_fields.dart';
import 'package:gyara_01/comp/buttons.dart';
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
        color: kBlueTextColor,
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
      textOnButton: 'Log in',
    );
    final signUpButton = SecondaryButton(
      onPush: () {
        setState(() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignUp()));
        });
      },
      textOnButton: 'Sign up',
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: kWhiteTextColor,
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
                    height: 90.0,
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
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        color: Colors.red[300],
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
