import 'package:flutter/material.dart';
import 'package:menu_navigation/src/pages/home_page.dart';
/* import 'package:menu_navigation/src/pages/home_temp.dart';
import 'navigation.dart'; */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        theme: ThemeData(
          primaryColor: Colors.red[800],
        ),
        //home: Navigation(),
        home: HomePage(),
        //home: HomeTemp(),
        );
  }
}
