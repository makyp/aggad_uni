import 'package:flutter/material.dart';
import 'package:aggad/Bovinos/ui/widgets/calendar/g_simple_calendar.dart';
import 'package:aggad/Bovinos/ui/widgets/calendar/gCustomButtonModel.dart';
import 'package:aggad/menu_desplegable.dart';

class HomeAggad extends StatefulWidget {
  @override
  _HomeAggad createState() => _HomeAggad();
}

class _HomeAggad extends State<HomeAggad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TableEventsExample(),
    );
  }
}
