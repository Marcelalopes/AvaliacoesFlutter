// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Widget _bodyHome() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AddText(
              text: "UQUIZ",
              font: TextStyle(
                fontSize: 55.0,
                color: Colors.white,
                fontFamily: "Anton",
              ),
            ),
            const AddText(
              text:
                  "We provide make more experience \n for playing game. Just be happy!",
              font: TextStyle(fontSize: 19.0, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 16,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: "ENTER YOUR NAME",
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonTheme(
              height: 80,
              minWidth: 300,
              buttonColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: RaisedButton(
                elevation: 50,
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/selectTeam");
                },
                child: const Text(
                  "CREATE YOUR TEAM",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/images/background-com-coroa.png",
                fit: BoxFit.cover,
              ),
            ),
            _bodyHome(),
          ],
        ),
      ),
    );
  }
}

class AddText extends StatelessWidget {
  final String text;
  final TextStyle font;
  const AddText({Key? key, required this.text, required this.font})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: font,
      ),
    );
  }
}
