import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _number = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogo do Nº Aleatório'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pense em um número de 0 a 10',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_number',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: _discover,
              child: Text('Descobrir'),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 43, 41, 41)),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _discover() {
    setState(() {
      _number = Random().nextInt(10).toString();
    });
  }
}
