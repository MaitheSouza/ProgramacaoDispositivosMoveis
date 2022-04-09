import 'dart:io';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController idadeController = TextEditingController();

  String dropdownSexo = 'Feminino';
  String dropdownEscolaridade = 'Ensino Médio';

  double valorSlider = 200;
  bool valorSwitch = false;

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
      title: Text("Abertura de Conta"),
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
          _campo("Nome:", nomeController, TextInputType.text),
          _campo("Idade:", idadeController, TextInputType.number),
          _dropdownButtonSexo(),
          _dropdownButtonEscolaridade(),
          _slider(),
          _switch(),
          _botao(),
          infoResultado
              ? Column(
                  children: [
                    _texto("Dados informados"),
                    _texto('Nome: ${nomeController.text}'),
                    _texto('Idade: ${idadeController.text}'),
                    _texto('Sexo: $dropdownSexo'),
                    _texto('Escolaridade: $dropdownEscolaridade'),
                    _texto('Limite: R\$ $valorSlider'),
                    _texto(valorSwitch ? "Brasileiro" : "Estrangeiro"),
                  ],
                )
              : _texto("Clique em confirmar"),
        ],
      ),
    );
  }

  _slider() {
    return Column(
      children: [
        _texto("Limite: "),
        Slider(
          activeColor: Colors.pink,
          inactiveColor: Colors.pink[100],
          thumbColor: Colors.pink,
          value: valorSlider,
          min: 0,
          max: 1000,
          divisions: 100,
          label: valorSlider.round().toString(),
          onChanged: (double value) {
            setState(() {
              valorSlider = value;
            });
          },
        )
      ],
    );
  }

  _dropdownButtonEscolaridade() {
    return DropdownButton(
      value: dropdownEscolaridade,
      items: ['Ensino Fundamental', 'Ensino Médio', 'Ensino Superior']
          .map((String escolaridade) {
        return DropdownMenuItem(
          value: escolaridade,
          child: Text(escolaridade),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          dropdownEscolaridade = value!;
        });
      },
    );
  }

  _dropdownButtonSexo() {
    return DropdownButton(
      value: dropdownSexo,
      items: ['Feminino', 'Masculino'].map((String sexo) {
        return DropdownMenuItem(
          value: sexo,
          child: Text(sexo),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          dropdownSexo = value!;
        });
      },
    );
  }

  _switch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _texto("Brasileiro: "),
        Switch(
          value: valorSwitch,
          onChanged: (value) {
            setState(() {
              valorSwitch = value;
            });
          },
          activeTrackColor: Colors.pink,
          activeColor: Colors.pink[100],
        )
      ],
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
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _valores,
          child: Text("Confirmar",
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
