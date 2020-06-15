import 'package:flutter/material.dart';

campoUsuarioSenha(rotulo, controle) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5),

    child: TextFormField(
      keyboardType: TextInputType.text,

      style: TextStyle(color: Colors.teal[900], fontSize: 20),

      decoration:  InputDecoration(
        labelText: rotulo,
        labelStyle: TextStyle(color: Colors.teal[500], fontSize: 12),
      ),

      controller: controle,

      validator: (value) {
        return (value.isEmpty) ? "Campo Obrigatório!" : null;
      },
    ),    
  );
}