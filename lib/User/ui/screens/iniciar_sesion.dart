import 'package:aggad/menu_desplegable.dart';
import 'package:flutter/material.dart';
import 'package:aggad/aggad_trips.dart';
import 'package:aggad/widgets/background_incio_registro.dart';
import 'package:aggad/User/ui/widgets/user_iniciar_sesion.dart';

class IniciarSesionFinal extends StatelessWidget {
  static const String routeName = '/IniciarSesionFinal';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IniciarSesion(),
    );
  }
}
