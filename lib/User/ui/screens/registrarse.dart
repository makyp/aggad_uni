import 'package:aggad/menu_desplegable.dart';
import 'package:flutter/material.dart';
import 'package:aggad/aggad_trips.dart';
import 'package:aggad/User/ui/widgets/usser_registrarse.dart';

class Registrarse extends StatelessWidget {
  static const String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserRegistrarse(),
    );
  }
}
