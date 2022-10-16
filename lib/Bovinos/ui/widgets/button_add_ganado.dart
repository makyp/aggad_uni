import 'package:flutter/material.dart';
import 'package:aggad/Bovinos/ui/screens/creando_bovino.dart';

class ButtonAddGanado extends StatefulWidget {
  @override
  _ButtonAddGanadoState createState() => _ButtonAddGanadoState();
}

class _ButtonAddGanadoState extends State<ButtonAddGanado> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: "Añadir Bovino",
      iconSize: 70,
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => CreandoBovino()),
      ),
      icon: Icon(
        Icons.add_circle,
        color: Colors.green,
      ),
    );
  }
}
