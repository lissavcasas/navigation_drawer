import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  //const Home({Key key}) : super(key: key);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              /* decoration: BoxDecoration(
                color: Colors.red[800],
              ), */
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
              //selected: (0 == _selectedIndex),
              /* onTap: () {
                _onSelectItem(0);
              }, */
            ),
            ListTile(
              title: Text('Business'),
              leading: Icon(Icons.business),
              //selected: (1 == _selectedIndex),
             /*  onTap: () {
                _onSelectItem(1);
              }, */
            ),
            ListTile(
              title: Text('School'),
              //selected: (2 == _selectedIndex),
              leading: Icon(Icons.school),
              /* onTap: () {
                _onSelectItem(2);
              }, */
            ),
            Divider(),
             ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                //_onSelectItem(3);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
        'Home page',
          style: optionStyle,
        ),
      ),
    );
  }
}

 