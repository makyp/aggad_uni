import 'package:flutter/material.dart';

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Hembra';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    String Sexo = "";
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(14.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sexo del bovino: ',
              style: new TextStyle(fontSize: 17.0),
            ),
            Radio(
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Hembra';
                  id = 1;
                });
              },
            ),
            Text(
              'Hembra',
              style: new TextStyle(fontSize: 17.0),
            ),
            Radio(
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Macho';
                  id = 2;
                });
              },
            ),
            Text(
              'Macho',
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
