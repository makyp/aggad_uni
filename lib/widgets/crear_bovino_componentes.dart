import 'package:aggad/widgets/card_image.dart';
import 'package:flutter/material.dart';
import 'package:aggad/widgets/selecfecha.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:aggad/widgets/realizar_registro.dart';
import 'package:aggad/widgets/card_image.dart';
import 'package:aggad/widgets/RadioButtonGrup.dart';

class FormularioPage extends StatefulWidget {
  const FormularioPage({Key? key}) : super(key: key);

  @override
  _FormularioPageState createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  String _nombre = '';
  String _identificacion = '';
  String _fechanacimiento = '';
  String _raza = '';
  String _identificacionpadre = '';
  String _fechanacimientomadre = '';

  List<String> _ListadeRazas = [
    'Seleccione la raza',
    'Angus',
    'Ayrshire',
    "Beefmaster",
    "Blanco orejinegro",
    "Bosmara",
    "Brangus",
    "Charbray",
    "Charole",
    "Guernesey",
    "Gyr",
    "Hereford",
    "Holstein",
    "Limousine",
    "Maine Anjou",
    "Marchigiana",
    "Nelore",
    "Normando",
    "Pardo suizo",
    "Pasiega",
    "Jersey",
    "Romagnola",
    "Santa Gertrudis",
    "Shorthorn",
    "Simental aleman",
    "Simenta americano"
  ];
  String _ValorEscogidoRaza = 'Seleccione la raza';

  String _radioAtenciomInicial = '';
  Set<String> _valoresRadio = {'Macho', 'Hembra'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AGGAD- AGREGAR BOVINO'),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.5, vertical: 10.0),
          children: [
            NombreBovino(),
            RadioGroup(),
            Divider(),
            IdentificacionBovino(),
            Divider(),
            BasicDateField(),
            Divider(),
            _ListadoDeRazasIndicado(),
            Divider(),
            IdentificacionBovinoPadre(),
            Divider(),
            IdentificacionBovinoMadre(),
            Divider(),
            CardImage(),
            Divider(),
            RealizarRegistro("Enviar"),
          ],
        ));
  }

  /*Widget _visualizarDatos() {
    return Column(
      children: [
        Text('Nombre del bovino: $_nombre'),
        Text('Identficacion bovino: $_identificacion'),
        Text('Fecha de nacimiento: $_email'),
        Text('Raza: $_password'),
        Text('Id del Padre: $_ValorEscogidoRaza'),
        Text('Id de la madre: $_checkEnfermedadTerminal'),
        Text('Hospitalizado: $_switchHospitalizado'),
        Text('Atendido inicialmente en: $_radioAtenciomInicial'),
      ],
    );
  }*/

  Widget _crearRadio() {
    return Container(
      child: _SexodelBovino(),
    );
  }

  Widget _SexodelBovino() {
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [Text("Sexo del bovino")],
            ),
            Row(
              children: [
                Radio(value: 1, groupValue: null, onChanged: (index) {}),
                Text("Macho")
              ],
            ),
            Row(
              children: [
                Radio(value: 1, groupValue: null, onChanged: (index) {}),
                Text("Hembra")
              ],
            ),
          ],
        )
      ],
    ));
  }

  Widget _ListadoDeRazasIndicado() {
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
            items: _CrearListaRaza(),
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

  List<DropdownMenuItem<String>> _CrearListaRaza() {
    List<DropdownMenuItem<String>> lista = [];
    _ListadeRazas.forEach((element) {
      lista.add(DropdownMenuItem(
        child: Text('$element'),
        value: element,
      ));
    });

    return lista;
  }

  /* Widget _crearEmail() {
    return TextField(
      onChanged: (valor) => setState(() {
        _email = valor;
        print(valor);
      }), // Fijarse que podemos guardar una cadena vacía
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email del paciente',
          labelText: 'Email',
          suffixIcon: Icon(Icons.email),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
    );
  }
*/
  /*Widget _crearPassword() {
    return TextField(
      onChanged: (valor) => setState(() {
        _password = valor;
      }), // Fijarse que podemos guardar una cadena vacía
      obscureText: true,
      obscuringCharacter: '-',
      maxLength: 20,
      decoration: InputDecoration(
          hintText: 'Password de entrada',
          labelText: 'Password',
          suffixIcon: Icon(Icons.password),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
    );
  }*/

  Widget NombreBovino() {
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
            'Nombre del bovino', // Texto que aparece dentro de la caja y desaparece al escribir
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

  Widget IdentificacionBovinoPadre() {
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
        // Establece un borde cicular/otro  alrededor de la caja de texto

        // counterText:
        //    'Número de caracteres: ${_nombre.length}', // Texto que aparece a la derecha y debajo de la caja
        hintText:
            'Identificación Padre del bovino', // Texto que aparece dentro de la caja y desaparece al escribir
        labelText:
            'Identificación Padre', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
        // helperText:
        //     'Introduce el nombre del bovino', // Texto que aparece a la izquierda y abajo de la caja
        suffixIcon: Icon(Icons
            .account_balance_wallet_sharp), // Widget que aparece a la derecha dentro de la caja
        //       icon: Icon(Icons
        //           .accessibility), // Widget que aparece a la izquierda fuera de la caja
      ),
    );
  }

  Widget IdentificacionBovinoMadre() {
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
            'Identificación del bovino', // Texto que aparece dentro de la caja y desaparece al escribir
        labelText:
            'Identificación Madre', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
        // helperText:
        //     'Introduce el nombre del bovino', // Texto que aparece a la izquierda y abajo de la caja
        suffixIcon: Icon(Icons
            .monitor_weight), // Widget que aparece a la derecha dentro de la caja
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
