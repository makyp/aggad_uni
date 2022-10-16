import 'package:aggad/menu_desplegable.dart';
import 'package:flutter/material.dart';
import 'package:aggad/Registros/ui/widgets/campos_registro_produccion.dart';

class RegistroProduccio extends StatelessWidget {
  static const String routeName = '/RegistroProduccion';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AGGAD-PRODUCCIÓN"),
        backgroundColor: Color(0xFF66BBB6A),
      ),
      drawer: MenuDesplegable(),

      body:
          CamposRegistroProduccion(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
