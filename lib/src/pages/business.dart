import 'package:flutter/material.dart';

class Business extends StatelessWidget {
  //const Business({Key key}) : super(key: key);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Business page',
          style: optionStyle,
        ),
      ),
    );
  }
}