import 'package:flutter/material.dart';
import 'package:avaliacao2/pages/home.dart';
import 'package:avaliacao2/pages/questions.dart';
import 'package:avaliacao2/pages/select_team.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UQuiz",
      initialRoute: "/home",
      routes: {
        "/home":(context) => const HomePage(),
        "/selectTeam": (context) => const SelectTeam(),
        "/questions": (context) => const Question(),
      },
    );
  }

}