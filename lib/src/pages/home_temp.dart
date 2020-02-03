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
      body: ListView(
        children: _createItems()
      ),
    );
  }

  List<Widget> _createItems(){
    List<Widget> list = new List<Widget>();
    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      list..add(tempWidget)
          ..add(Divider());
    }
    return list;
  }

}
