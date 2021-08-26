import 'package:flutter/material.dart';
import 'dart:math';
import 'Resultado.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    void _exibirResultado(){

      var itens = ["cara", "coroa"];
      var numero = Random().nextInt(itens.length);
      var resultado = itens[numero];

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Resultado(resultado)
          )
      );
    }
    
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/botao_jogar.png")
            )
          ],
        )
      )
    );
  }
}
