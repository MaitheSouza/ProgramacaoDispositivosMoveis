import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String infoResultado = "Informe os valores!";

  void _calcularSoma() {
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text);

      double resultado = peso / (altura * altura);

      if (resultado < 18.5) {
        infoResultado = 'Você está abaixo do peso';
      } else if (resultado > 18.5 && resultado < 24.9) {
        infoResultado = 'Você está com o peso normal';
      } else if (resultado > 25 && resultado < 29.9) {
        infoResultado = 'Você está sobrepeso';
      } else if (resultado > 30 && resultado < 34.9) {
        infoResultado = 'Você está com obesidade Grau I';
      } else if (resultado > 35 && resultado < 39.9) {
        infoResultado = 'Você está com obesidade Grau II';
      } else {
        infoResultado = 'Você está com obesidade Mórbida';
      }
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
      title: Text("Cálculo do IMC"),
      centerTitle: true,
      backgroundColor: Colors.pinkAccent,
    );
  }

  _foto() {
    return Center(
        child: Image.network(
      'https://www.ricardogozzano.com.br/wp-content/uploads/2020/03/tabela_imc.png',
      height: 200,
      width: 200,
    ));
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _foto(),
          _campo("Digite o peso:", pesoController),
          _campo("Digite a altura:", alturaController),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.black)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 20.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularSoma,
          child: Text("Verificar IMC",
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
