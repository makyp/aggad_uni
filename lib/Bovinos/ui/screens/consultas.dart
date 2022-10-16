import 'package:flutter/material.dart';

class Consultas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Card(
          color: Colors.white70,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                IconButton(
                    tooltip: "Gestion del ganado",
                    iconSize: 70,
                    onPressed: () {
                      print("Aun no se encuentra habilidato");
                    },
                    icon: Icon(
                      Icons.app_registration,
                      color: Colors.green,
                    )),
                Text("Gestion del Ganado"),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white70,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                IconButton(
                    tooltip: "Control registros de Vacunación",
                    iconSize: 70,
                    onPressed: () {
                      print("Aun no se encuentra habilidato");
                    },
                    icon: Icon(
                      Icons.check_box_rounded,
                      color: Colors.green,
                    )),
                Text(" Control vacunación"),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white70,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                IconButton(
                    tooltip: "Control Registros de Vacunación",
                    iconSize: 60,
                    onPressed: () {
                      print("Aun no se encuentra habilidato");
                    },
                    icon: Icon(
                      Icons.settings_input_svideo,
                      color: Colors.green,
                    )),
                Text("Control Inseminación"),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white70,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                IconButton(
                    tooltip: "Gestion del ganado",
                    iconSize: 60,
                    onPressed: () {
                      print("Aun no se encuentra habilidato");
                    },
                    icon: Icon(
                      Icons.favorite_outlined,
                      color: Colors.green,
                    )),
                Text("Gestion de Partos"),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white70,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                IconButton(
                    tooltip: "Gestion del ganado",
                    iconSize: 60,
                    onPressed: () {
                      print("Aun no se encuentra habilidato");
                    },
                    icon: Icon(
                      Icons.propane_tank_rounded,
                      color: Colors.green,
                    )),
                Text("Control de Producción"),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white70,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                IconButton(
                    tooltip: "Gestion del ganado",
                    iconSize: 60,
                    onPressed: () {
                      print("Aun no se encuentra habilidato");
                    },
                    icon: Icon(
                      Icons.monetization_on_rounded,
                      color: Colors.green,
                    )),
                Text("Ventas de leche"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
