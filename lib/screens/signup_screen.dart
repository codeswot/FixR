import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final onScreen = Text(
      "Sign Up",
      style: TextStyle(
        fontSize: 50.0,
        color: Color(0xff01A0C7),
      ),
    );

    final nameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: "Full Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Email Adress",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final confirmPasswordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: "Confirm Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final signUpButton =
       MaterialButton(
         elevation: 0,
        highlightElevation: 0,
        color: Color(0xff01A0C7),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Sign up",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),

    );
    final loginButon = Material(
        child: OutlineButton(
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
    ));
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
                  height: 3,
                ),
                SizedBox(
                  height: 200.0,
                  child: Image.asset(
                    'images/bg2.png',
                    fit: BoxFit.contain,
                  ),
                ),
                onScreen,
                SizedBox(height: 15.0),
                nameField,
                SizedBox(height: 20.0),
                emailField,
                SizedBox(height: 20.0),
                passwordField,
                SizedBox(height: 20.0),
                confirmPasswordField,
                SizedBox(
                  height: 30.0,
                ),
                signUpButton,
                SizedBox(
                  height: 15.0,
                ),
                loginButon,
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
