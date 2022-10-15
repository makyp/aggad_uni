import 'package:flutter/material.dart';
import 'aggad_trips.dart';

class MenuDesplegable extends StatelessWidget {
  String title = "AGGAD";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AGGAD'),
        backgroundColor: Colors.green,
      ),
      body: AggadTrips(),
      drawer: Drawer(
          child: new ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Finca Montiel"),
            accountEmail: Text("Guacheta, Cundinamarca"),
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.white),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            title: Text('Producción'),
            leading: Icon(Icons.propane_tank_outlined),
          ),
          ListTile(
            title: Text('Vacunación'),
            leading: Icon(Icons.vaccines_sharp),
          ),
          ListTile(
            title: Text('Inseminación'),
            leading: Icon(Icons.vaccines_rounded),
          ),
          ListTile(
            title: Text('Partos'),
            leading: Icon(Icons.receipt_sharp),
          ),
          ListTile(
            title: Text('Venta de Leche'),
            leading: Icon(Icons.monetization_on_outlined),
          ),
        ],
      )),
    );
  }
}
