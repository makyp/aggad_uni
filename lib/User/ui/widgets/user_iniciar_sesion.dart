import 'package:flutter/material.dart';
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
          height: 250.0,
          width: 2000.0,
        ),
        Text(
          "Inicio de Sesión",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),
        ),
      ],
    );
    final Espacio = Text(
      "",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),
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
          color: Color(0xFF388E3C),
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
          Espacio,
          _crearEmail(),
          Espacio,
          _crearPassword(),
          Espacio,
          ButtonRegistro,
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
        hintText: 'Contraseña',
        labelText: 'Contraseña',
        suffixIcon: Icon(Icons.password),
      ),
    );
  }

  Widget OlvidoPassword() {
    return Center(
      child: Text(
        "¿Olvido su contraseña?",
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Color(0xff558b2f)),
      ),
    );
  }
}
