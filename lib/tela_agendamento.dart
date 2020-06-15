import 'package:flutter/material.dart';

class TelaAgendamento extends StatefulWidget {
  @override
  _TelaAgendamentoState createState() => _TelaAgendamentoState();
}

class _TelaAgendamentoState extends State<TelaAgendamento>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Agendamento"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[

          Text(
              "Tipo de Atendimento:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: RaisedButton(
                color: Colors.amber[50],
                padding: EdgeInsets.all(30),
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Icon(Icons.schedule, color: Colors.teal,),
                    Text("   Cliníca Médica", style: TextStyle(fontSize: 20),),
                  ],
                ),  
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: RaisedButton(
                color: Colors.amber[50],
                padding: EdgeInsets.all(30),
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Icon(Icons.schedule, color: Colors.teal,),
                    Text("   Dermatologista", style: TextStyle(fontSize: 20),),
                  ],
                ),  
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: RaisedButton(
                color: Colors.amber[50],
                padding: EdgeInsets.all(30),
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Icon(Icons.schedule, color: Colors.teal,),
                    Text("   Psicólogo", style: TextStyle(fontSize: 20),),
                  ],
                ),  
              ),
            ),

         
        ],
      ),
    );
  }
}    


