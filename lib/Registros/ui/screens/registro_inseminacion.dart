import 'package:aggad/menu_desplegable.dart';
import 'package:flutter/material.dart';
import 'package:aggad/aggad_trips.dart';
import 'package:aggad/Registros/ui/widgets/campos_registro_inseminacion.dart';

class RegistroInseminacion extends StatelessWidget {
  static String routeName = '/RegistroInseminacion';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AGGAD-INSEMINACIÓN"),
        backgroundColor: Color(0xFF66BBB6A),
      ),
      drawer: MenuDesplegable(),
      body: CamposRegistroInseminacion(),
    );
  }
}
