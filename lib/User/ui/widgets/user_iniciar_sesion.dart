import 'package:aggad/widgets/card_image.dart';
import 'package:flutter/material.dart';
import 'package:aggad/widgets/selecfecha.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:aggad/widgets/realizar_registro.dart';
import 'package:aggad/widgets/RadioButtonGrup.dart';

import '../../../menu_desplegable.dart';

class IniciarSesion extends StatefulWidget {
  const IniciarSesion({Key? key}) : super(key: key);

  @override
  _IniciarSesionState createState() => _IniciarSesionState();
}

class _IniciarSesionState extends State<IniciarSesion> {
  String _email = '';
  String _contrasena = '';

  @override
  Widget build(BuildContext context) {
    final AppBarBonito = Stack(
      alignment: Alignment(0, 0), //Alinear el boton respecto a la tarjeta
      children: <Widget>[
        Container(
          color: Color(0xFFA5D6A7),
          height: 200.0,
          width: 450.0,
          margin: EdgeInsets.only(
            top: 0,
            left: 0,
            right: 0,
          ),
        ),
        Text(
          "Inicio de Sesión",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),
        ),
      ],
    );

    final ButtonRegistro = Padding(
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), border: Border()),
        child: MaterialButton(
          minWidth: double.infinity,
          height: 60,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => MenuDesplegable()),
          ),
          color: Color(0xff558b2f),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Text(
            "Ingresar",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.5, vertical: 10.0),
        children: [
          AppBarBonito,
          Divider(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          ButtonRegistro,
          Divider(),
          OlvidoPassword(),
        ],
      ),
    );
  }

  Widget _crearEmail() {
    return TextField(
      onChanged: (valor) => setState(() {
        _email = valor;
        print(valor);
      }), // Fijarse que podemos guardar una cadena vacía
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        fillColor: Color(0xFFe5e5e5),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe5e5e5)),
            borderRadius: BorderRadius.circular(30)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFe5e5e5)),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        hintText: 'Email del usuario',
        labelText: 'Email',
        suffixIcon: Icon(Icons.email),
      ),
    );
  }

  Widget _crearPassword() {
    return TextField(
      onChanged: (valor) => setState(() {
        _contrasena = valor;
      }), // Fijarse que podemos guardar una cadena vacía
      obscureText: true,
      obscuringCharacter: '-',
      maxLength: 20,
      decoration: InputDecoration(
        fillColor: Color(0xFFe5e5e5),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe5e5e5)),
            borderRadius: BorderRadius.circular(30)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFe5e5e5)),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        hintText: 'Password de entrada',
        labelText: 'Password',
        suffixIcon: Icon(Icons.password),
      ),
    );
  }

  Widget OlvidoPassword() {
    return Center(
      child: Text("¿Olvido su contraseña? _Click Aqui_"),
    );
  }
}
