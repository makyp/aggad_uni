import 'package:flutter/material.dart';
import 'package:aggad/User/ui/screens/bienvenido_registro_inicio.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/Aggad.png";
  String name = "Bienvenido a";
  String namedos = "AGGAD";
  String details = "Podra Llevar el control de su ganado,";
  String detailstwo = "Creando las Hojas de Vida y ";
  String detailsthree = "Gestionando todos sus registros";
  Review(this.pathImage, this.name, this.namedos, this.details, this.detailstwo,
      this.detailsthree);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Center(
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.white),
          ),
        ));
    final userCommenttwo = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Center(
          child: Text(
            namedos,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.white),
          ),
        ));

    final ussserDetails = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Center(
          child: Text(
            details,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Lato", fontSize: 20, color: Colors.white),
          ),
        ));

    final usserDetailsTwo = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Center(
          child: Text(
            detailstwo,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Lato", fontSize: 20, color: Colors.white),
          ),
        ));
    final usserDetailsThree = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Center(
          child: Text(
            detailsthree,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Lato", fontSize: 20, color: Colors.white),
          ),
        ));

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userComment,
        userCommenttwo,
        Divider(),
        Divider(),
        ussserDetails,
        usserDetailsTwo,
        usserDetailsThree
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 100, left: 0),
      width: 250.0,
      height: 250.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final ButtonSiguiente = Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), border: Border()),
        child: MaterialButton(
          minWidth: double.infinity,
          height: 60,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => BienvenidoRegistroInicio()),
          ),
          color: Color(0xFF388E3C),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Text(
            "Siguiente",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );

    return Container(
      color: Color(0xFFA5D6A7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          photo,
          userDetails,
          Divider(),
          Divider(),
          Divider(),
          Divider(),
          ButtonSiguiente,
        ],
      ),
    );
  }
}
