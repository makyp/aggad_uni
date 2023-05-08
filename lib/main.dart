import 'package:aggad/User/ui/screens/iniciar_sesion.dart';
import 'package:flutter/material.dart';
import 'package:aggad/Registros/ui/screens/registro_inseminacion.dart';
import 'package:aggad/Registros/ui/screens/registro_partos.dart';
import 'package:aggad/Registros/ui/screens/registro_produccion.dart';
import 'package:aggad/Registros/ui/screens/registro_vacunacion.dart';
import 'package:aggad/Registros/ui/screens/registro_ventas_leche.dart';
import 'package:aggad/User/ui/screens/profile.dart';
import 'package:aggad/User/ui/screens/bienvenido.dart';
//importaciones necesarias para la base de datos
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//Fin de las importaciones
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String profile = Profile.routeName;
  static const String registro_produccion = RegistroProduccio.routeName;
  static const String registro_vacunacion = RegistroVacunacion.routeName;
  static String registro_inseminacion = RegistroInseminacion.routeName;
  static String registro_partos = RegistroPartos.routeName;
  static const String registro_ventas_leche = RegistroVentasLeche.routeName;
  static const String iniciar_sesion = IniciarSesionFinal.routeName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AGGAD',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          registro_produccion: (context) => RegistroProduccio(),
          registro_vacunacion: (context) => RegistroVacunacion(),
          registro_inseminacion: (context) => RegistroInseminacion(),
          registro_partos: (context) => RegistroPartos(),
          registro_ventas_leche: (context) => RegistroVentasLeche(),
          iniciar_sesion: (context) => IniciarSesionFinal(),
        },
        home: Scaffold(
          body: Bienvenido(),
        ));


  }
}
