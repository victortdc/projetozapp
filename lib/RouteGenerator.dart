import 'package:flutter/material.dart';

import 'Cadastro.dart';
import 'Configuracoes.dart';
import 'Home.dart';
import 'Login.dart';
import 'Mensagens.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //passar settings como parametro nas rotas
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) =>
                Login()); // o underline é para diminuir uso de memoria do app
      case "/login":
        return MaterialPageRoute(builder: (_) => Login());
      case "/cadastro":
        return MaterialPageRoute(builder: (_) => Cadastro());
      case "/home":
        return MaterialPageRoute(builder: (_) => Home());
      case "/configuracoes":
        return MaterialPageRoute(builder: (_) => Configuracoes());
      case "/mensagens":
        return MaterialPageRoute(
            builder: (_) => Mensagens(
                args)); //passa args por parametro, para eu poder ter acesso na tela de conversa
      default:
        _erroRota();
    }
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tela não encontrada!"),
        ),
        body: Center(
          child: Text("Tela não encontrada!"),
        ),
      );
    });
  }
}
