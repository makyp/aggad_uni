import 'package:aggad/User/ui/screens/registrarse.dart';
import 'package:flutter/material.dart';
import 'package:aggad/User/ui/screens/iniciar_sesion.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/IconoGestion.png";
  String name = "Bienvenido a";
  String namedos = "AGGAD";
  String espacio = "";
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
                fontSize: 45,
                fontWeight: FontWeight.w900,
                color: Colors.white),
          ),
        ));
    final Espacioji = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Center(
          child: Text(
            espacio,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 40,
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
                fontSize: 40,
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
        Espacioji,
        ussserDetails,
        usserDetailsTwo,
        usserDetailsThree
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 100, left: 0),
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white70,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final ButtonInicio = Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), border: Border()),
        child: MaterialButton(
          minWidth: double.infinity,
          height: 60,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => IniciarSesionFinal()),
          ),
          color: Color(0xFF388E3C),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Text(
            "Inicio de Sesión",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );

    final ButtonRegistro = Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), border: Border()),
        child: MaterialButton(
          minWidth: double.infinity,
          height: 60,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => Registrarse()),
          ),
          color: Color(0xFF388E3C),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Text(
            "Registrarse",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
    final Botones = Row(
      children: <Widget>[
        Expanded(child: ButtonInicio),
        Expanded(child: ButtonRegistro)
      ],
    );
    return Container(
      color: Color(0xFFA5D6A7),
      child: ListView(
        children: <Widget>[
          Container(
            color: Color(0xFFA5D6A7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                photo,
                userDetails,
                Espacioji,
                Espacioji,
                Botones,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
