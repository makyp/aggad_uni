import 'package:aggad/widgets/card_image.dart';
import 'package:flutter/material.dart';
import 'package:aggad/widgets/selecfecha.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:aggad/widgets/realizar_registro.dart';
import 'package:aggad/widgets/card_image.dart';

class CamposRegistroVentas extends StatefulWidget {
  const CamposRegistroVentas({Key? key}) : super(key: key);

  @override
  _CamposRegistroVentasState createState() => _CamposRegistroVentasState();
}

class _CamposRegistroVentasState extends State<CamposRegistroVentas> {
  String _Registro = '';
  String _Comprador = '';
  String _NOmbreRecolector = '';
  String _Jornada = '';
  int _NumeroDeLitros = 0;

  List<String> _ListadeJornada = ['Seleccione la Jornada', 'Mañana', 'Tarde'];
  String _ValorEscogidoRaza = 'Seleccione la Jornada';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.5, vertical: 10.0),
      children: [
        BasicDateField(),
        espacio,
        NombreEmpresaRecolectora(), // TextField con múltiples opciones de decoración
        espacio,
        NombreRecolector(),
        espacio,
        _ListadoDeJornadaIndicado(),
        espacio,
        NumeroLitros(),
        espacio,
        CardImage(),
        espacio,
        RealizarRegistro("Enviar"),
        espacio,
      ],
    ));
  }

  final espacio = Text("");
  Widget _ListadoDeJornadaIndicado() {
    return Container(
      height: 60.0,
      padding: EdgeInsets.only(left: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(color: Color(0xffe5e5e5)),
        color: Color(0xffe5e5e5),
      ),
      child: Row(
        children: [
          DropdownButton(
            value: _ValorEscogidoRaza,
            onChanged: (String? valor) {
              setState(() {
                _ValorEscogidoRaza = valor!;
              });
            },
            items: _CrearListaJornada(),
          ),
          Spacer(),
          Container(
            child: Icon(Icons.receipt),
            padding: EdgeInsets.only(right: 10.0),
          ),
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> _CrearListaJornada() {
    List<DropdownMenuItem<String>> lista = [];
    _ListadeJornada.forEach((element) {
      lista.add(DropdownMenuItem(
        child: Text('$element'),
        value: element,
      ));
    });

    return lista;
  }

  Widget NombreEmpresaRecolectora() {
    return TextField(
      onChanged: (valor) => setState(() {
        _Comprador = valor;
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
            'Nombre de Empresa Recolectora', // Texto que aparece dentro de la caja y desaparece al escribir
        labelText:
            'Nombre de Empresa Recolectora', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
        // helperText:
        //     'Introduce el nombre del bovino', // Texto que aparece a la izquierda y abajo de la caja
        suffixIcon: Icon(Icons
            .backup_table_rounded), // Widget que aparece a la derecha dentro de la caja
        //       icon: Icon(Icons
        //           .accessibility), // Widget que aparece a la izquierda fuera de la caja
      ),
    );
  }

  Widget NombreRecolector() {
    return TextField(
      onChanged: (valor) => setState(() {
        _Comprador = valor;
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
            'Nombre del recolector', // Texto que aparece dentro de la caja y desaparece al escribir
        labelText:
            'Nombre del recolector', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
        // helperText:
        //     'Introduce el nombre del bovino', // Texto que aparece a la izquierda y abajo de la caja
        suffixIcon: Icon(
            Icons.person), // Widget que aparece a la derecha dentro de la caja
        //       icon: Icon(Icons
        //           .accessibility), // Widget que aparece a la izquierda fuera de la caja
      ),
    );
  }

  Widget NumeroLitros() {
    return TextField(
      onChanged: (valor) => setState(() {
        _NumeroDeLitros = valor as int;
      }), // Fijarse que podemos guardar una cadena vacía
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.number,
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
            'Número de Litros', // Texto que aparece dentro de la caja y desaparece al escribir
        labelText:
            'Número de Litros', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
        // helperText:
        //     'Introduce el nombre del bovino', // Texto que aparece a la izquierda y abajo de la caja
        suffixIcon: Icon(
            Icons.numbers), // Widget que aparece a la derecha dentro de la caja
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
              'Fecha de Registro', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
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
