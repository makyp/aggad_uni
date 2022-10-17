import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _pressed = false; //En un inicio va a estar desactivado
  void onPressedFav() {
    //Declaracion del metodo de OnPressed para la accion.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          duration: Duration(seconds: 1),
          backgroundColor: Color(0xFF388E3C),
          content: this._pressed
              ? Text("Dirigiendo para agregar imagen")
              : Text("Dirigiendo para agregar imagen")),
    );
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF388E3C),
      mini: true, //boton pequeño
      tooltip: "Agregar Image", //si alguien lo preciona
      onPressed:
          onPressedFav, //se debe agregar siempre, se le esta enviando el metodo que se desea
      child: Icon(
          this._pressed ? Icons.camera_alt_rounded : Icons.camera_alt_rounded),
    );
  }
}
