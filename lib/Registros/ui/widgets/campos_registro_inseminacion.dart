import 'package:flutter/material.dart';
import 'package:aggad/widgets/selecfecha.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:aggad/widgets/realizar_registro.dart';

class CamposRegistroInseminacion extends StatefulWidget {
  const CamposRegistroInseminacion({Key? key}) : super(key: key);

  @override
  _CamposRegistroInseminacion createState() => _CamposRegistroInseminacion();
}

class _CamposRegistroInseminacion extends State<CamposRegistroInseminacion> {
  String _identificacion = '';
  String _fechaderegistro = '';
  String _idenficaciopajilla = "";
  String _RazaPajilla = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.5, vertical: 10.0),
      children: [
        espacio,
        IdentificacionBovino(),
        espacio,
        BasicDateField(),
        espacio,
        _IdentificacionPajilla(),
        espacio,
        _RazaDePajilla(),
        espacio,
        RealizarRegistro("Enviar"),
        espacio,
      ],
    ));
  }

  final espacio = Text("");
  Widget IdentificacionBovino() {
    return TextField(
      onChanged: (valor) => setState(() {
        _identificacion = valor;
      }), // Fijarse que podemos guardar una cadena vacía
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.text,
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
            'Identificación del bovino', // Texto que aparece dentro de la caja y desaparece al escribir
        labelText:
            'Identificación', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
        // helperText:
        //     'Introduce el nombre del bovino', // Texto que aparece a la izquierda y abajo de la caja
        suffixIcon: Icon(Icons
            .recent_actors_sharp), // Widget que aparece a la derecha dentro de la caja
        //       icon: Icon(Icons
        //           .accessibility), // Widget que aparece a la izquierda fuera de la caja
      ),
    );
  }

  Widget _IdentificacionPajilla() {
    return TextField(
      onChanged: (valor) => setState(() {
        _identificacion = valor;
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
        // Establece un borde cicular/otro  alrededor de la caja de texto

        // counterText:
        //    'Número de caracteres: ${_nombre.length}', // Texto que aparece a la derecha y debajo de la caja
        hintText:
            'Identificación de la pajilla', // Texto que aparece dentro de la caja y desaparece al escribir
        labelText:
            'Identificación de la pajila', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
        // helperText:
        //     'Introduce el nombre del bovino', // Texto que aparece a la izquierda y abajo de la caja
        suffixIcon: Icon(Icons
            .sanitizer_outlined), // Widget que aparece a la derecha dentro de la caja
        //       icon: Icon(Icons
        //           .accessibility), // Widget que aparece a la izquierda fuera de la caja
      ),
    );
  }

  Widget _RazaDePajilla() {
    return TextField(
      onChanged: (valor) => setState(() {
        _identificacion = valor;
      }), // Fijarse que podemos guardar una cadena vacía
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFe5e5e5),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe5e5e5)),
            borderRadius: BorderRadius.circular(30)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFe5e5e5)),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        // counterText:
        //    'Número de caracteres: ${_nombre.length}', // Texto que aparece a la derecha y debajo de la caja
        hintText:
            'Raza de la Pajilla', // Texto que aparece dentro de la caja y desaparece al escribir
        labelText:
            'Raja de la Pajilla', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
        // helperText:
        //     'Introduce el nombre del bovino', // Texto que aparece a la izquierda y abajo de la caja
        suffixIcon: Icon(Icons
            .account_balance_wallet_sharp), // Widget que aparece a la derecha dentro de la caja
        //       icon: Icon(Icons
        //           .accessibility), // Widget que aparece a la izquierda fuera de la caja
      ),
    );
  }
}

class BasicDateField extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      DateTimeField(
        format: format,
        onShowPicker: (context, currentValue) {
          return showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100));
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFe5e5e5),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFe5e5e5)),
              borderRadius: BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe5e5e5)),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          // counterText:
          //    'Número de caracteres: ${_nombre.length}', // Texto que aparece a la derecha y debajo de la caja
          hintText:
              'DD-MM-AAAA', // Texto que aparece dentro de la caja y desaparece al escribir
          labelText:
              'Fecha de Nacimiento', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
          // helperText:
          //     'Introduce el nombre del bovino', // Texto que aparece a la izquierda y abajo de la caja
          suffixIcon: Icon(Icons
              .calendar_month), // Widget que aparece a la derecha dentro de la caja
          //       icon: Icon(Icons
          //
        ),
      ),
    ]);
  }
}
