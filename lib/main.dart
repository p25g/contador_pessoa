import 'package:contador_pessoa/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contador de Pessoas",
      theme: ThemeData(
        backgroundColor: Colors.black,
      ),
      home: Home_Page(),
    );
  }
}