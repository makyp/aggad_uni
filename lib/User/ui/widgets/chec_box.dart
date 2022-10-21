import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: timeDilation != 1.0,
      onChanged: (bool? value) {
        setState(() {
          timeDilation = value! ? 10.0 : 1.0;
        });
      },
      title: const Text('Acepta los terminos y condiciones'),
    );
  }
}