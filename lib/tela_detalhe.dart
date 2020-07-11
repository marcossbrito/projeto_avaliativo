import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeto_pratico_avaliativo_parte1/tela_principal.dart';

import 'model/Agendamentos.dart';

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

  
  final db = Firestore.instance;
  final String colecao = "agendamentos";

  
  List<Agendamentos> lista = List();

  
  StreamSubscription<QuerySnapshot> listen;

  @override
  void initState() {
    super.initState();

   
    listen?.cancel();

    
    listen = db.collection(colecao).snapshots().listen((res) {
      setState(() {
        lista = res.documents
            .map((doc) => Agendamentos.fromMap(doc.data, doc.documentID))
            .toList();
      });
    });
  }

  @override
  void dispose() {
    listen?.cancel();
    super.dispose();
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhe do Agendamento"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      
      body: StreamBuilder<QuerySnapshot>(
        

        stream: db.collection(colecao).snapshots(),

        builder: (context, snapshot){

          switch (snapshot.connectionState){
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              List<DocumentSnapshot> docs = snapshot.data.documents;
                return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      
                        
          
          children: <Widget>[



            Text(lista[index].paciente, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
            Text(lista[index].tipo),
            Text(lista[index].data),

            Padding(padding: EdgeInsets.only(top: 20)),

            Row(
              children: <Widget>[
                Icon(Icons.location_city, color: Colors.teal,),
                Text(lista[index].clinica),
              ]
            ),
            Row(
              children: <Widget>[
                Icon(Icons.location_on, color: Colors.teal,),
                Text(lista[index].endereco),
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
                db.collection(colecao).document(lista[index].id).delete();
              },
            ), 
          ],
                      
                        
                      );


                      
        
                      
                    
                  }


                );



            


          }

        

        }

                
      ),
    );
  }
}    


