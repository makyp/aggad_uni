import 'package:aggad/Registros/ui/widgets/campos_registro_ventas_leche.dart';
import 'package:aggad/menu_desplegable.dart';
import 'package:flutter/material.dart';
import 'package:aggad/Registros/ui/widgets/campos_registro_ventas_leche.dart';

class RegistroVentasLeche extends StatelessWidget {
  static const String routeName = '/RegistroVentasLeche';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AGGAD-VENTAS LECHE"),
        backgroundColor: Colors.green,
      ),
      drawer: MenuDesplegable(),
      body:
          CamposRegistroVentas(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
