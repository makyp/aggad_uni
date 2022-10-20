import 'package:flutter/material.dart';
import 'aggad_trips.dart';
import 'main.dart';

class MenuDesplegable extends StatelessWidget {
  String imgProfile = "assets/img/Finca.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AGGAD'),
        backgroundColor: Color(0xFF66BBB6A),
      ),
      body: AggadTrips(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _buildDrawerHeader(),
            _buildDrawerItem(
                icon: Icons.propane_tank_rounded,
                text: 'Producción',
                onTap: () => {
                      Navigator.pushReplacementNamed(
                          context, MyApp.registro_produccion)
                    }),
            _buildDrawerItem(
                icon: Icons.vaccines_rounded,
                text: 'Vacunación',
                onTap: () => {
                      Navigator.pushReplacementNamed(
                          context, MyApp.registro_vacunacion)
                    }),
            _buildDrawerItem(
                icon: Icons.settings_input_svideo,
                text: 'Inseminación',
                onTap: () => {
                      Navigator.pushReplacementNamed(
                          context, MyApp.registro_inseminacion)
                    }),
            _buildDrawerItem(
                icon: Icons.recent_actors,
                text: 'Partos',
                onTap: () => {
                      Navigator.pushReplacementNamed(
                          context, MyApp.registro_partos)
                    }),
            _buildDrawerItem(
                icon: Icons.monetization_on,
                text: 'Venta Leche',
                onTap: () => {
                      Navigator.pushReplacementNamed(
                          context, MyApp.registro_ventas_leche)
                    }),
            ListTile(
              title: Text('App version 1.0.0'),
              onTap: () {},
            ),
            _buildDrawerItem(
                text: 'Cerrar Sesión',
                icon: Icons.login_sharp,
                onTap: () => {
                      Navigator.pushReplacementNamed(
                          context, MyApp.iniciar_sesion)
                    }),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text("Finca Montiel"),
      accountEmail: Text("Guacheta, Cundinamarca"),
      currentAccountPicture: Container(
        margin: EdgeInsets.only(top: 0, left: 0),
        width: 250.0,
        height: 250.0,
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.white, width: 1.0, style: BorderStyle.solid),
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(imgProfile))),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.5),
        color: Colors.green,
      ),
    );
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
