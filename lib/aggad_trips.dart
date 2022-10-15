import 'package:flutter/material.dart';
import 'package:aggad/Bovinos/ui/screens/home_aggad.dart';
import 'package:aggad/Bovinos/ui/screens/crear_bovinos.dart';
import 'package:aggad/Bovinos/ui/screens/consultas.dart';
import 'menu_desplegable.dart';

class AggadTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AggadTrips();
  }
}

class _AggadTrips extends State<AggadTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeAggad(),
    CrearBovinos(),
    Consultas(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[indexTap], //Se colocaran los taps que se desean
      bottomNavigationBar: Theme(
        //Personalizacion
        data: Theme.of(context).copyWith(
            //Para colorear la barra
            canvasColor: Colors.white,
            primaryColor: Colors
                .green //Este es el color que queremos para los iconos cuando se seleccionen

            ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTapTapped, //Que sucede cuando alguien le de tap
          currentIndex:
              indexTap, //Indicar que el indice que se aprege sea el ingresado
          items: [
            //Dentro se colocan los taps que tenga nuestro bottonNavigation
            BottomNavigationBarItem(
              icon: Icon(Icons
                  .home), //Home es un icono por defecto que nos proporcionan
              label: ("Home"), //Titulo de la seccion, si no tiene en blanco
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons
                  .add_circle), //Home es un icono por defecto que nos proporcionan
              label: ("Bovinos"), //Titulo de la seccion, si no tiene en blanco
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons
                  .app_registration), //Home es un icono por defecto que nos proporcionan
              label:
                  ("Consultas"), //Titulo de la seccion, si no tiene en blanco
            ),
          ],
        ),
      ),
    );
  }
}
