import 'package:aggad/menu_desplegable.dart';
import 'package:flutter/material.dart';
import 'package:aggad/aggad_trips.dart';

class Profile extends StatelessWidget {
  static const String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.green,
      ),
      drawer: MenuDesplegable(),
      body:
          AggadTrips(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
