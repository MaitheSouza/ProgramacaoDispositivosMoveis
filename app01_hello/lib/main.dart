// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu Perfil"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Text(
              "Meu nome é Maithê, tenho 21 anos, sou estagiária de desenvolvimento da IBM, já realizei alguns projetos com a Digital Innovation One, como: Recriando interface da Netflix e Instagram. ",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
