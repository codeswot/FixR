import 'package:flutter/material.dart';
import 'package:gyara_01/globals/const.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    decoration: new BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ],
                      color: kSecondaryColor,
                      border: new Border.all(
                          color: Colors.white,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: new BorderRadius.only(
                        bottomLeft: new Radius.circular(20.0),
                        bottomRight: new Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 65, 0, 0),
                          child: Text(
                            'Musa Omar',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'Alata',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 0, 10, 20),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Kaduna, Nigeria',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Alata',
                                ),
                              ),
                              Icon(
                                Icons.location_on,
                                size: 13,
                                color: Colors.black26,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                //TODO: look for a cleaner way to paint this

                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(250, 50, 0, 5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/avatar.png',
                      ),
                      radius: 43,
                    ),
                  ),
                ],
              )
            ],
          ),
        ]
    );
  }
}
