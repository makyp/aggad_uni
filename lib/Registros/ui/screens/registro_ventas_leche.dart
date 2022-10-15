import 'package:aggad/menu_desplegable.dart';
import 'package:flutter/material.dart';

class RegistroVentasLeche extends StatelessWidget {
  static const String routeName = '/RegistroVentasLeche';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AGGAD-VENTAS LECHE"),
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
