import 'package:flutter/material.dart';
import 'package:menu_navigation/src/providers/menu_provider.dart';
import 'package:menu_navigation/src/utils/icono_string_util.dart';
import 'package:menu_navigation/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
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
