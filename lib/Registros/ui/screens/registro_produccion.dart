import 'package:aggad/menu_desplegable.dart';
import 'package:flutter/material.dart';
import 'package:aggad/aggad_trips.dart';

class RegistroProduccio extends StatelessWidget {
  static const String routeName = '/RegistroProduccion';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AGGAD-PRODUCCIÓN"),
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
