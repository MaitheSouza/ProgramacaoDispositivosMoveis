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
          title: Text('Anúncios'),
          centerTitle: true,
        ),
        body: _corpo(),
      ),
    );
  }

  _corpo() {
    return Container(
      child: PageView(
        children: <Widget>[
          _foto('rock1.jpg'),
          _foto('rock2.jpg'),
          _foto('rock3.jpg'),
          _foto('rock4.jpg'),
          _foto('rock5.jpg'),
        ],
      ),
    );
  }

  _foto(String nomeFoto) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          "https://d3ugyf2ht6aenh.cloudfront.net/stores/552/065/products/garrafa_eco_tupper_plus_freezer_750_ml_glace_833_1_ec788f8132d765a318967276e3243adb2-b3184c97f4fcc422b516156552896838-480-0.png",
          height: 300,
        ),
        Text('Garrafinha')
      ],
    );
  }
}
