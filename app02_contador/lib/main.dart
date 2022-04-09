import 'package:app_contador/home.dart';
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
      title: 'Contador de Pessoas',
      theme: ThemeData(colorScheme: ColorScheme.light(primary: Colors.pink)),
      home: home(title: "Contador de Pessoas"),
    );
  }
}
