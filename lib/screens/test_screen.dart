import 'package:flutter/material.dart';

class TestUs extends StatefulWidget {
  @override
  _TestUsState createState() => _TestUsState();
}

class _TestUsState extends State<TestUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Boxx(),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Boxx(),
                  Boxx(),
                  Boxx(),
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Boxx(),
                  Boxx(),
                  Boxx(),
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Boxx(),
                  Boxx(),
                  Boxx(),
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Boxx(),
                  Boxx(),
                  Boxx(),
                ],
              )),
              Expanded(
                child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Boxx extends StatelessWidget {
  const Boxx({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          color: Colors.white12,
        ),
        width: 500,
        height: 200,
        child: Text('1'),
      ),
    );
  }
}
