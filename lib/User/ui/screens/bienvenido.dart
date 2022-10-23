import 'package:flutter/material.dart';
import '../widgets/user_bienvenido.dart';

class Bienvenido extends StatelessWidget {
  @override
  String pathImage = "assets/img/Aggad.png";
  String name = "Bienvenido a";
  String namedos = "AGGAD";
  String details = "Podra llevar el control de su ganado,";
  String detailstwo = "creando las hojas de Vida y ";
  String detailsthree = "gestionando todos sus registros.";

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Review(
            pathImage, name, namedos, details, detailstwo, detailsthree));
  }
}
