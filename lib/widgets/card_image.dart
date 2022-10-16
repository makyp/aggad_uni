import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  CardImage();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Container(
      height: 80.0,
      width: 160.0,
      margin: EdgeInsets.only(
        top: 10,
        left: 100,
        right: 100,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xFFA5D6A7),
              offset: Offset(0.0, 7.0),
            )
          ]),
    );
    return Stack(
      //Para devolver un elemento encima de otro
      alignment: Alignment(0, 0.5), //Alinear el boton respecto a la tarjeta
      children: <Widget>[
        card,
        FloatingActionButtonGreen(),
      ],
    );
  }
}
