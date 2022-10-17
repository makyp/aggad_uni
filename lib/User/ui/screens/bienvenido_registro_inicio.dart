import 'package:flutter/material.dart';
import '../widgets/user_bienvenido_registro_inicio.dart';

class BienvenidoRegistroInicio extends StatelessWidget {
  @override
  String pathImage = "assets/img/gestion.png";
  String name = "";
  String namedos = "AGGAD";
  String details = "Lleva tus registros de manera eficiente,";
  String detailstwo = "permitiendo aumentar el rendimiento";
  String detailsthree = "y administración de tus  animales";

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Review(
            pathImage, name, namedos, details, detailstwo, detailsthree));
  }
}
