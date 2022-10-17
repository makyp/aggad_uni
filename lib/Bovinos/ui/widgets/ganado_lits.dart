import 'package:flutter/material.dart';
import 'package:aggad/Bovinos/ui/widgets/ganado.dart';

class GanadoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Ganado("assets/img/Vaca.jpeg", "Berta", "ID: 2003D1 - 1 Parto",
            "Su media de leche son 15 litros"),
        Ganado("assets/img/Vaca1.jpeg", "Paola", "ID: 2000D8 - 2 Partos",
            "Su media de leche son 23 litros"),
        Ganado("assets/img/Ternero.jpeg", "Fresita", "ID: 2022D1 - 2 Meses",
            "Su madre es Berta"),
        Ganado("assets/img/Vaca2.jpeg", "Manzana", "ID: 2005D8 - 2 Partos",
            "Su media de leche son 18 litros"),
        Ganado("assets/img/Ternero2.jpg", "Augustina", "ID: 2026D8 - 1 Mes",
            "Su madre es Manzana"),
        Ganado("assets/img/Vaca3.jpeg", "Betulia", "ID: 2000D8 - 2 Partos",
            "Su media de leche son 23 litros"),
        Ganado("assets/img/Vaca4.jpeg", "Carmenza", "ID: 2000D8 - 2 Partos",
            "Su media de leche son 23 litros"),
        Ganado("assets/img/Ternero1.jpg", "MotoMoto", "ID: 2022D8 - 3 Meses",
            "Su madre es Manzana"),
      ],
    );
  }
}
