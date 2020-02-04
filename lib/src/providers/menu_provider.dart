import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    //loadData();
  }

  /*  loadData() {
    rootBundle.loadString('data/menu_opts.json').then((data) {
      //print(data);
      Map dataMap = json.decode(data);
      //print(dataMap['nombreApp']);
      //print(dataMap['rutas']);
      options = dataMap['rutas'];

    });
  } */

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    //print(dataMap['nombreApp']);
    //print(dataMap['rutas']);
    options = dataMap['rutas'];

    return options;
  }
}

final menuProvider = new _MenuProvider();
