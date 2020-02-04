import 'package:flutter/material.dart';

class School extends StatelessWidget {
  //const School({Key key}) : super(key: key);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'School page',
          style: optionStyle,
        ),
      ),
    );
  }
}