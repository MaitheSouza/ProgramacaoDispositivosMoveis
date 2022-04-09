import 'dart:io';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController valor = TextEditingController();

  String dropdownDe = 'Dolar';
  String dropdownPara = 'Euro';

  bool infoResultado = false;

  void _valores() {
    setState(() {
      infoResultado = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Conversor de Moedas \n\n Dólar, Real e Euro"),
      centerTitle: true,
      backgroundColor: Colors.pinkAccent,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _campo("valorController:", valor, TextInputType.text),
          _botao(),
          infoResultado
              ? Column(
                  children: [
                    _texto("Resultado"),
                  ],
                )
              : _texto("Clique em confirmar"),
        ],
      ),
    );
  }

  _dropdownButtonDe() {
    return DropdownButton(
      value: dropdownDe,
      items: ['Dólar', 'Euro', 'Real'].map((String de) {
        return DropdownMenuItem(
          value: de,
          child: Text(de),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          dropdownDe = value!;
        });
      },
    );
  }

  _dropdownButtonPara() {
    return DropdownButton(
      value: dropdownPara,
      items: ['Dólar', 'Euro', 'Real'].map((String para) {
        return DropdownMenuItem(
          value: para,
          child: Text(para),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          dropdownPara = value!;
        });
      },
    );
  }

  _campo(labelTitulo, objController, keyboardType) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.black)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 20.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 40.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _valores,
          child: Text("Converter",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Color.fromARGB(181, 0, 0, 0),
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style:
          TextStyle(color: Color.fromARGB(255, 209, 36, 137), fontSize: 20.0),
    );
  }
}
