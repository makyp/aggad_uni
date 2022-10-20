import 'package:flutter/material.dart';
import 'package:aggad/Bovinos/ui/widgets/ganado.dart';
import 'package:aggad/widgets/crear_bovino_componentes.dart';

class GanadoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Ganado(
                "assets/img/Vaca.jpeg",
                "Berta",
                "ID: 2003D1 - 2 Años, 6 meses",
                "Su media de leche son 15 litros"),
            Ganado(
                "assets/img/Vaca1.jpeg",
                "Paola",
                "ID: 2000D8 - 3 Años, 4 meses",
                "Su media de leche son 23 litros"),
            Ganado("assets/img/Ternero.jpeg", "Fresita", "ID: 2022D1 - 2 Meses",
                "No se encuentra en producción"),
            Ganado(
                "assets/img/Vaca2.jpeg",
                "Manzana",
                "ID: 2005D8 - 3 Años, 2 meses",
                "Su media de leche son 18 litros"),
            Ganado("assets/img/Ternero2.jpg", "Augustina", "ID: 2026D8 - 1 Mes",
                "No se encuentra en producción"),
            Ganado(
                "assets/img/Vaca3.jpeg",
                "Betulia",
                "ID: 2000D8 - 2 Años, 3 meses",
                "Su media de leche son 23 litros"),
            Ganado(
                "assets/img/Vaca4.jpeg",
                "Carmenza",
                "ID: 2000D8 - 4 Años, 2 meses",
                "Su media de leche son 12 litros"),
            Ganado("assets/img/Ternero1.jpg", "MotoMoto",
                "ID: 2022D54 - 3 Meses", "No se encuentra en producción"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => CrearBovinoComponentes()),
        ),
      ),
    );
  }
}
