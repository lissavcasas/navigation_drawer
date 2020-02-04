import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage Temp'),
      ),
      body: ListView(children: _createItems()),
    );
  }

  List<Widget> _createItems() {
    return options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('This is a subtitle'),
            leading: Icon(Icons.cake),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
            ),
          Divider(),
        ],
      );
    }).toList();
  }

  /* List<Widget> _createItems() {
    var widgets = options.map((item) => ListTile(title: Text(item + '!'))).toList();
    return widgets;
  } */

  //List<Widget> _createItems() => options.map((item) => ListTile(title: Text(item + '!'))).toList();

}
