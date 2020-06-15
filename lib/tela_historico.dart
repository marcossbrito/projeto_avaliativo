import 'package:flutter/material.dart';

import 'metodo_menu.dart';

class TelaHistorico extends StatefulWidget {
  @override
  _TelaHistoricoState createState() => _TelaHistoricoState();
}

class _TelaHistoricoState extends State<TelaHistorico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Histórico"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.calendar_today, color: Colors.teal,),
            title: Text("Clínica Médica"),
            subtitle: Text("04/04/2017 - 08:30"),
            trailing: Icon(Icons.check_circle, color: Colors.teal,),
            onTap: () {debugPrint("Ok"); },
          ),

          ListTile(
            leading: Icon(Icons.calendar_today, color: Colors.teal,),
            title: Text("Dermatologista"),
            subtitle: Text("05/07/2019 - 10:30"),
            trailing: Icon(Icons.cancel, color: Colors.teal,),
            onTap: () {debugPrint("Ok"); },
          ),
        ],
      ),
    );
  }
}