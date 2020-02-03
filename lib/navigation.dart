import 'package:flutter/material.dart';
import 'home.dart';
import 'business.dart';
import 'school.dart';

class Navigation extends StatefulWidget {
  Navigation({Key key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  Color color;

  _getDrawerItemWidget( int index) {
    switch(index){
      case 0: return Home();
      case 1: return Business();
      case 2: return School();
    }
  }

  _onSelectItem(int index){
      Navigator.of(context).pop();
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
              selected: (0 == _selectedIndex),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: Text('Business'),
              leading: Icon(Icons.business),
              selected: (1 == _selectedIndex),
              onTap: () {
                _onSelectItem(1);
              },
            ),
            ListTile(
              title: Text('School'),
              selected: (2 == _selectedIndex),
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
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[800],
        onTap: _onItemTapped,
      ),
      body: _getDrawerItemWidget(_selectedIndex),
    );
  }
}
  