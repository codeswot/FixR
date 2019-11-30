import 'package:flutter/material.dart';
import 'package:gyara_01/comp/technician_card.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return new TechCard();
  }
}
