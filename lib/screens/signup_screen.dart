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

    final onScreen = Text("Sign Up",
    style: TextStyle(
      color: Colors.blue,
    ),);

    final nameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

          labelText: "Full Name",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),),),
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


    final signUpButton = Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Signup",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final loginButon = Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(30.0),

      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold)),
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
                      height: 155.0,
                      child: Image.asset(
                        "assets/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    onScreen,
                    SizedBox(height: 45.0),
                    nameField,
                    SizedBox(height: 25.0),
                    emailField,
                    SizedBox(
                      height: 35.0,
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
        )
    );
  }
}
