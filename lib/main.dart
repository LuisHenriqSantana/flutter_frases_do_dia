import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Enfrente os problemas e leve a melhor! Levanta, sacode a poeira, dá a volta por cima.",
    "Dê mais atenção ao que você tem de bom na sua vida.",
    "Para chegar ao topo, o que importa é começar!",
    "De nada adianta ter sonhos, se você não se empenhar em correr atrás!",
    "Preste atenção nas oportunidades que estão à sua frente!",
    "Positividade para começar o dia é colocar a sua fé em prática!",
    "Não deixe nada nem ninguém estragar o seu bom humor!",
    "Ontem já passou, é hora de planejar o futuro!"
  ];
  var _fraseGerada = "Gerar frase do dia!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        title: Text(
          'Frases do dia',
          style: TextStyle(
            color: Colors.white70,
            fontSize: (25),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            SizedBox(
              height: 30.0,
            ),
            Text(
              _fraseGerada,
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
                child: Text(
                  'Nova Frase',
                  style: TextStyle(fontSize: (20.0)),
                ),
                color: Colors.teal,
                onPressed: _gerarFrase),
          ],
        ),
      ),
    );
  }
}
