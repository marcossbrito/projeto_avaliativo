import 'package:flutter/material.dart';
import 'package:projeto_pratico_avaliativo_parte1/tela_historico.dart';
import 'package:projeto_pratico_avaliativo_parte1/tela_login.dart';
import 'package:projeto_pratico_avaliativo_parte1/tela_principal.dart';
import 'package:projeto_pratico_avaliativo_parte1/tela_sobre.dart';

menuApp(BuildContext context) {

  return Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[

            Container( 
              color: Colors.teal,               
              height: 100,
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Image.asset("assets/imagens/icone.png", height: 50, width: 50,),
                  Text(
                    "Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ],
              ),              
            ),
             
              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TelaPrincipal()),);
                },
                child: Row(
                  children: <Widget>[
                    Icon(Icons.home, color: Colors.teal,),
                    Text("Início", style: TextStyle(color: Colors.teal),),
                  ],
                ),  
              ),

              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TelaHistorico()),);
                },
                child: Row(
                  children: <Widget>[
                    Icon(Icons.history, color: Colors.teal,),
                    Text("Histórico", style: TextStyle(color: Colors.teal),),
                  ],
                ),  
              ),

              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TelaSobre()),);
                },
                child: Row(
                  children: <Widget>[
                    Icon(Icons.info, color: Colors.teal,),
                    Text("Sobre", style: TextStyle(color: Colors.teal),),
                  ],
                ),  
              ),

              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TelaLogin()),);
                },
                child: Row(
                  children: <Widget>[
                    Icon(Icons.exit_to_app, color: Colors.teal,),
                    Text("Sair", style: TextStyle(color: Colors.teal),),
                  ],
                ),  
              ),


            ],

          ),
      );

}