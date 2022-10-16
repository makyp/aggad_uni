import 'package:flutter/material.dart';

class RadioGroupEstado extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Vivo';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    String EstadoParto = "";
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(14.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Estado: ',
              style: new TextStyle(fontSize: 17.0),
            ),
            Radio(
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Vivo';
                  id = 1;
                });
              },
            ),
            Text(
              'Vivo',
              style: new TextStyle(fontSize: 17.0),
            ),
            Radio(
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Muerto';
                  id = 2;
                });
              },
            ),
            Text(
              'Muerto',
              style: new TextStyle(
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
