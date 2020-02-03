import 'package:flutter/material.dart';

class Home extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.red[800],
      ),
      /* body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ), */
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red[800],
              ),
              accountName: Text('Melissa Casas'),
              accountEmail: Text('marimel.casas@gmail.com'),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text(
                    'M',
                    style: TextStyle(fontSize: 40.0, color: Colors.black),
                  )),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Business'),
              leading: Icon(Icons.business),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('School'),
              leading: Icon(Icons.school),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
  
  