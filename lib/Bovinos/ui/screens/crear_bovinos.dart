import 'package:flutter/material.dart';
import 'package:aggad/Bovinos/ui/widgets/ganado_lits.dart';
import 'package:aggad/Bovinos/ui/widgets/button_add_ganado.dart';

class CrearBovinos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Stack(
          children: [
            GanadoList(),
            ButtonAddGanado(),
          ],
        )
      ],
    );
  }
}
