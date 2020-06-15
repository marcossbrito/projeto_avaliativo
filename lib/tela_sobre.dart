import 'package:flutter/material.dart';
import 'metodo_menu.dart';

class TelaSobre extends StatefulWidget {
  @override
  _TelaSobreState createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Sobre o Aplicativo"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Image.asset("assets/imagens/icone.png", height: 80, width: 80,),

              Text(
                "Agendamento de Consultas",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
              ),

              Text(
                "Aplicativo para facilitar a interação entre paciente e clínica,"
                "trazendo data e horário de consultas a serem agendadas, assim como o histórico"
                "das consultas realizadas.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18,),
              ),
                 
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/imagens/dev.jpg", height: 80, width: 80,),
                        ]
                      ),
                    ),
                    
                    Text("Desenvolvido por:", style: TextStyle(fontWeight: FontWeight.bold,)),
                    Text("Marcos Aurelio Brito da Silva")
                  ]
                ),
              ),

  
            ]
          ),                      
        ), 
      ),      
    );    
  }
}