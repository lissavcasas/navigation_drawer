import 'package:flutter/material.dart';
import 'package:menu_navigation/src/providers/menu_provider.dart';

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

   print(menuProvider.options);

    return ListView(
      children: _itemsList(),
    );
  }

  List<Widget> _itemsList() {
    return [
      ListTile(title: Text('Hey you')),
      Divider(),
      ListTile(title: Text('Hey you')),
      Divider(),
      ListTile(title: Text('Hey you')),
      Divider(),
    ];
  }
}
