import 'package:flutter/material.dart';

class RealizarRegistro extends StatelessWidget {
  String buttonText = "Enviar";
  RealizarRegistro(this.buttonText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Color(0xff558b2f),
              duration: Duration(seconds: 1),
              content: Text("Agregando nuevo registro"),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
            top: 20.0,
            left: 100.0,
            right: 100.0,
          ),
          height: 60.0,
          width: 70.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [Color(0xff558b2f), Color(0xff558b2f)],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: "Lato",
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
