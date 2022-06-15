import 'package:flutter/material.dart';
import 'package:primer_parcial/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Nombre: José Tejada
    //Matrícula: 2020-10474
    return MaterialApp(
      title: 'Primer Parcial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}


