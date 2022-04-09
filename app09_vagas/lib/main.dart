// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vagas'),
          centerTitle: true,
        ),
        body: _corpo(),
      ),
    );
  }

  _corpo() {
    return Container(
      child: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _vaga('rock1.jpg'),
          _vaga('rock2.jpg'),
          _vaga('rock3.jpg'),
          _vaga('rock4.jpg'),
          _vaga('rock5.jpg'),
        ],
      ),
    );
  }

  _vaga(String nomeVaga) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Vaga Desenvolvedor Backend | Salário: A combinar \n\n Descrição: Oportunidade Remota, empresa com sede em SP. \n\n Contato: rh@email.com ou (11)97777-0713',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      )
    ]);
  }
}
