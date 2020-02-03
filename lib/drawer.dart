import 'package:flutter/material.dart';
import 'home.dart';
import 'business.dart';
import 'school.dart';

class SideBar extends StatefulWidget {
  SideBar({Key key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int _selectDrawerItem = 0;
  Color color;

  _getDrawerItemWidget( int pos) {
    switch(pos){
      case 0: return Home();
      case 1: return Business();
      case 2: return School();
    }
  }

  _onSelectItem(int pos){
      Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Sample'),
        backgroundColor: Colors.red[800],
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
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: Text('Business'),
              leading: Icon(Icons.business),
              selected: (1 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(1);
              },
            ),
            ListTile(
              title: Text('School'),
              selected: (2 == _selectDrawerItem),
              leading: Icon(Icons.school),
              onTap: () {
                _onSelectItem(2);
              },
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
      body: _getDrawerItemWidget(_selectDrawerItem),
        /* body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ), */
    );
  }
}
  