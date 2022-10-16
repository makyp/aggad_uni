import 'package:aggad/menu_desplegable.dart';
import 'package:flutter/material.dart';

import 'package:aggad/aggad_trips.dart';

class RegistroPartos extends StatelessWidget {
  static const String routeName = '/RegistroPartos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AGGAD-PARTOS"),
        backgroundColor: Colors.green,
      ),
      drawer: MenuDesplegable(),
      body: Center(
        child: Text(
          'Home Page',
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
