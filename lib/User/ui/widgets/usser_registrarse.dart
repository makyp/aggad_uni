import 'package:flutter/material.dart';
import '../../../menu_desplegable.dart';
import 'package:aggad/User/ui/widgets/chec_box.dart';

class UserRegistrarse extends StatefulWidget {
  const UserRegistrarse({Key? key}) : super(key: key);

  @override
  _UserRegistrarseState createState() => _UserRegistrarseState();
}

class _UserRegistrarseState extends State<UserRegistrarse> {
  String _nombre = "";
  String _email = '';
  String _finca = "";
  String _contrasena = '';
  String _contrasenaconf = '';

  @override
  Widget build(BuildContext context) {
    final AppBarBonito = Stack(
      alignment: Alignment(0, 0.5), //Alinear el boton respecto a la tarjeta
      children: <Widget>[
        Container(
            height: 150.0,
            width: 420.0,
            margin: EdgeInsets.only(
              top: 0,
              left: 0,
              right: 0,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color(0xFFA5D6A7),
                    offset: Offset(0, 7.0),
                  )
                ])),
        Text(
          "Creación de la cuenta",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 30, color: Colors.white),
        ),
      ],
    );
    final Espacio = Text(
      "",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 10, color: Colors.white),
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
          color: Color(0xFF558B2F),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Text(
            "Registarse",
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
          Espacio,
          NombreCuenta(),
          Espacio,
          NombreFinca(),
          Espacio,
          _crearEmail(),
          Espacio,
          _crearPassword(),
          _crearPasswordconf(),
          MyStatefulWidget(),
          Espacio,
          ButtonRegistro,
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
        filled: true,
        fillColor: Color(0xFFe5e5e5),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe5e5e5)),
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
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

  Widget NombreCuenta() {
    return TextField(
      onChanged: (valor) => setState(() {
        _nombre = valor;
      }), // Fijarse que podemos guardar una cadena vacía
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFe5e5e5),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe5e5e5)),
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFe5e5e5)),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        // counterText:
        //    'Número de caracteres: ${_nombre.length}', // Texto que aparece a la derecha y debajo de la caja
        hintText:
            'Introduce tu nombre', // Texto que aparece dentro de la caja y desaparece al escribir
        labelText:
            'Nombre', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
        // helperText:
        //     'Introduce el nombre del bovino', // Texto que aparece a la izquierda y abajo de la caja
        suffixIcon: Icon(Icons
            .recent_actors_sharp), // Widget que aparece a la derecha dentro de la caja
        //       icon: Icon(Icons
        //           .accessibility), // Widget que aparece a la izquierda fuera de la caja
      ),
    );
  }

  Widget NombreFinca() {
    return TextField(
      onChanged: (valor) => setState(() {
        _finca = valor;
      }), // Fijarse que podemos guardar una cadena vacía
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFe5e5e5),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe5e5e5)),
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFe5e5e5)),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        // counterText:
        //    'Número de caracteres: ${_nombre.length}', // Texto que aparece a la derecha y debajo de la caja
        hintText:
            'Nombre de la Finca', // Texto que aparece dentro de la caja y desaparece al escribir
        labelText:
            'Finca', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
        // helperText:
        //     'Introduce el nombre del bovino', // Texto que aparece a la izquierda y abajo de la caja
        suffixIcon: Icon(Icons
            .recent_actors_sharp), // Widget que aparece a la derecha dentro de la caja
        //       icon: Icon(Icons
        //           .accessibility), // Widget que aparece a la izquierda fuera de la caja
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
        filled: true,
        fillColor: Color(0xFFe5e5e5),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe5e5e5)),
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFe5e5e5)),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        hintText: 'Introduce tu contraseña',
        labelText: 'Contraseña',
        suffixIcon: Icon(Icons.password),
      ),
    );
  }

  Widget _crearPasswordconf() {
    return TextField(
      onChanged: (valor) => setState(() {
        _contrasenaconf = valor;
      }), // Fijarse que podemos guardar una cadena vacía
      obscureText: true,
      obscuringCharacter: '-',
      maxLength: 20,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFe5e5e5),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe5e5e5)),
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFe5e5e5)),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        hintText: 'Confirma tu contraseña',
        labelText: 'Confirma tu Contraseña',
        suffixIcon: Icon(Icons.password),
      ),
    );
  }
}
