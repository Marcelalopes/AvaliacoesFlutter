import 'package:flutter/material.dart';
import 'package:avaliacao1/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Avaliação 1',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}