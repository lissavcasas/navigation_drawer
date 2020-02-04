import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1()
        ]
      )
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.red[800]),
            title: Text('This is the title'),
            subtitle: Text('This is the subtitle'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {} ,
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {} ,
              )
            ],
          )
        ]
      )
    );
  }
}
