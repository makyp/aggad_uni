import 'package:aggad/menu_desplegable.dart';
import 'package:flutter/material.dart';
import 'package:aggad/Registros/ui/widgets/campos_registro_vacunacion.dart';

class RegistroVacunacion extends StatelessWidget {
  static const String routeName = '/RegistroVacunación';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AGGAD-VACUNACIÓN"),
        backgroundColor: Color(0xFF66BBB6A),
      ),
      drawer: MenuDesplegable(),
      body: CamposRegistroVacunacion(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
