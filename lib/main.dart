import 'package:flutter/material.dart';
import 'package:projeto_pratico_avaliativo_parte1/tela_login.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
  
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      title: "Aplicativo de Agendamento de Consultas",
      home: TelaLogin(),
    );
  }
}