import 'package:flutter/material.dart';
import 'home.dart';
 
void main() => runApp(MyApp());
 
 class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Home(),
    );
  }
}

