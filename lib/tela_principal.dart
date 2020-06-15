import 'package:flutter/material.dart';
import 'package:projeto_pratico_avaliativo_parte1/tela_agendamento.dart';
import 'package:projeto_pratico_avaliativo_parte1/tela_detalhe.dart';
import 'metodo_menu.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agendamentos"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      drawer: menuApp(context),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              "Verifique seus agendamentos:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
            ),

            Padding(
              padding: EdgeInsets.only(top: 50),
              child: RaisedButton(
                color: Colors.amber[50],
                padding: EdgeInsets.all(50),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TelaDetalhe()),);
                },
                child: Row(
                  children: <Widget>[
                    Icon(Icons.calendar_today, color: Colors.teal,),
                    Text("   Exame 1", style: TextStyle(fontSize: 20),),
                  ],
                ),  
              ),
            ),
          ]
        ), 
      ),
    


      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.calendar_today,),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TelaAgendamento()),);
        },
      ),

    );
  }
}