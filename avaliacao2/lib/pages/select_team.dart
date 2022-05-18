// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SelectTeam extends StatefulWidget {
  const SelectTeam({Key? key}) : super(key: key);

  @override
  _SelectTeamState createState() => _SelectTeamState();
}

class _SelectTeamState extends State<SelectTeam> {
  Widget _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            bottom: 30,
          ),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Image.asset("assets/images/lupa.png"),
          ),
        ),
        const AddText(
            text: "YOUR TEAM \nIS READY..",
            font: TextStyle(
              fontSize: 35.0,
              color: Colors.white,
              fontFamily: "Anton",
            )),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Container(
                    width: 130,
                    height: 130,
                    decoration:  BoxDecoration(
                      border: Border.all(
                        color: Colors.white60,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white12,
                      backgroundImage: AssetImage('assets/images/avatar1.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration:  BoxDecoration(
                      border: Border.all(
                        color: Colors.white60,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(70),
                    ),
                    width: 130,
                    height: 130,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white12,
                      backgroundImage: AssetImage('assets/images/avatar2.png'),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration:  BoxDecoration(
                      border: Border.all(
                        color: Colors.white60,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(70),
                    ),
                    width: 130,
                    height: 130,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white12,
                      backgroundImage: AssetImage('assets/images/avatar3.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration:  BoxDecoration(
                      border: Border.all(
                        color: Colors.white60,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(70),
                    ),
                    width: 130,
                    height: 130,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white12,
                      backgroundImage: AssetImage('assets/images/avatar4.png'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.play_circle_filled,
            color: Colors.green,
            size: 75.0,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/questions");
          },
        ),
        const SizedBox(
          height: 45.0,
        )
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
              "assets/images/background-sem-coroa.png",
              fit: BoxFit.cover,
            ),
          ),
          _body()
        ],
      )),
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

class AddProfile extends StatelessWidget {
  final String image;
  

  const AddProfile({Key? key, required this.image,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Image.asset(
        image,
        height: 100,
      ),
    ]);
  }
}
