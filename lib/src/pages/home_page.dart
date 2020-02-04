import 'package:flutter/material.dart';
import 'package:menu_navigation/src/providers/menu_provider.dart';
import 'package:menu_navigation/src/utils/icono_string_util.dart';
//import 'package:menu_navigation/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

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
        //currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[800],
        //onTap: _onItemTapped,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      //initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _itemsList(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _itemsList(List<dynamic> data, BuildContext context) {

    final List<Widget> options = [];

    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        //leading: Icon(Icons.kitchen, color: Colors.red[800]),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red[800]),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
            /* final route = MaterialPageRoute(
              builder: (context) => AlertPage());
              Navigator.push(context, route); */
        },
      );
      options..add(widgetTemp)
             ..add(Divider());
    });

    return options;
  }
}
