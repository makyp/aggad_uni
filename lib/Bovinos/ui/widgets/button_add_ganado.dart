import 'package:aggad/widgets/crear_bovino_componentes.dart';
import 'package:flutter/material.dart';
import 'package:aggad/Bovinos/ui/screens/creando_bovino.dart';
import 'package:aggad/widgets/selecfecha.dart';

class ButtonAddGanado extends StatefulWidget {
  @override
  _ButtonAddGanadoState createState() => _ButtonAddGanadoState();
}

class _ButtonAddGanadoState extends State<ButtonAddGanado> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsetsDirectional.only(
        start: 340,
        top: 570,
      ),
      tooltip: "Añadir Bovino",
      iconSize: 70,
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => CrearBovinoComponentes()),
      ),
      icon: Icon(
        Icons.add_circle,
        color: Color(0xff558b2f),
      ),
    );
  }
}
