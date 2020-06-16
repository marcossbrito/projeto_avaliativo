import 'package:flutter/material.dart';
import 'package:projeto_pratico_avaliativo_parte1/tela_principal.dart';
import 'campos_usuario_senha.dart';



class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState(); 
}

  
class _TelaLoginState extends State<TelaLogin> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtSenha = TextEditingController();
  String _usuario = "";
  


  botaoEntrar(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 20),

    child: RaisedButton(

      child: Text(
        "Entrar", 
        style: TextStyle(
          color: Colors.white, 
          fontSize: 18,
        ),
      ),

      color: Colors.teal[500],

      onPressed: () {
        if (_formkey.currentState.validate()) {
          _entrar();
          FocusScope.of(context).requestFocus(new FocusNode());
          exibirUsuarioDialog(context);
        }
      },
    ),
  );
}


  void _reset() {
  setState(() {
    txtUsuario.text = "";
    txtSenha.text = "";
    _usuario = "";
  });
}


void _entrar() {
  setState(() {
    String usuario = txtUsuario.text;
    _usuario = "Usuário:\n $usuario";
  });
}


exibirUsuarioDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Bem vindo!"),
        content: Text(_usuario, style: TextStyle(color: Colors.teal[900], fontSize: 20)),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TelaPrincipal()),);
            },
            child: Text("Ok")
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
        title: Text("Agenda de Consultas"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh), 
            onPressed: () { _reset(); }, 
             )
        ],
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20.0),

        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Icon(
                Icons.people, size: 80, color: Colors.teal[900]
              ),

              campoUsuarioSenha("Usuário", txtUsuario),
              campoUsuarioSenha("Senha", txtSenha),
              botaoEntrar(context),

              Container(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset("assets/imagens/icone.png", height: 50, width: 50,),
              ),

            ],
          ),
        ),
      ),

      backgroundColor: Colors.white,

    );
  }
}