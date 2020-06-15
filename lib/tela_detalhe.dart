import 'package:flutter/material.dart';
import 'package:projeto_pratico_avaliativo_parte1/tela_principal.dart';

class TelaDetalhe extends StatefulWidget {
  @override
  _TelaDetalheState createState() => _TelaDetalheState();
}

class _TelaDetalheState extends State<TelaDetalhe>{

  exibirCancelamentoDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Cancelamento!"),
        content: Text("Deseja mesmo cancelar?", style: TextStyle(color: Colors.teal[900], fontSize: 20)),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TelaPrincipal()),);
            },
              child: Text("Sim")
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TelaPrincipal()),);
            },
            child: Text("Não")
          )
        ],
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhe do Agendamento"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Paciente: Teste", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
            Text("Exame 1"),
            Text("04/07/2020 - 08:30"),

            Padding(padding: EdgeInsets.only(top: 20)),

            Row(
              children: <Widget>[
                Icon(Icons.location_city, color: Colors.teal,),
                Text("Clínica X"),
              ]
            ),
            Row(
              children: <Widget>[
                Icon(Icons.location_on, color: Colors.teal,),
                Text("Rua x, 350, Bairro Z"),
              ]
            ),

            Padding(padding: EdgeInsets.only(top: 20)),

            RaisedButton(
              child: Text(
              "Cancelar Consulta", 
              style: TextStyle(
              color: Colors.white, 
              fontSize: 18,
              ),
            ),

            color: Colors.teal[500],
              onPressed: () {
                exibirCancelamentoDialog(context);
              },
            ), 
          ],
        ),        
      ),
    );
  }
}    


