import 'package:flutter/material.dart';
import 'package:aggad/menu_desplegable.dart';
import 'package:aggad/aggad_trips.dart';

class CreandoBovino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AGGAD-Crear Bovinos"),
        backgroundColor: Colors.green,
      ),
      drawer: MenuDesplegable(),
      body:
          Scaffold(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
