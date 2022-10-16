import 'package:aggad/menu_desplegable.dart';
import 'package:flutter/material.dart';
import 'package:aggad/aggad_trips.dart';

class RegistroInseminacion extends StatelessWidget {
  static String routeName = '/RegistroInseminacion';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AGGAD-INSEMINACIÓN"),
        backgroundColor: Colors.green,
      ),
      drawer: MenuDesplegable(),
      body: Center(
        child: Text(
          'Home Page',
        ),
      ),
    );
  }
}
