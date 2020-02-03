import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  //const Home({Key key}) : super(key: key);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Home page',
          style: optionStyle,
        ),
      ),
    );
  }
}