// ignore_for_file: deprecated_member_use


import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var val = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(140, 82, 255, 4),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 75,
                  height: 50,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/selectTeam");
                    },
                  ),
                ),
                SizedBox(
                  width: 75,
                  height: 50,
                  child: Image.asset('assets/images/trofeu.png'),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, right: 10),
                  child: SizedBox(
                    width: 65,
                    height: 65,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar3.png'),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                AddText(
                    text: "YOUR POINTS:",
                    font: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: "Anton",
                    )),
                AddText(
                  text: "895",
                  font: TextStyle(
                    fontSize: 38.0,
                    color: Colors.orange,
                    fontFamily: "Anton",
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30,),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "QUESTION 1",
                      style: TextStyle(
                        fontFamily: "Anton",
                        color: Colors.white38,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "HOW MANY BITCOINS WILL THERE \nEVER BE?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Anton",
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        border: Border.all(
                          color:Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: const Text(
                          "21 MILLION IN 2018",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Anton",
                          ),
                        ),
                        leading: Radio(
                          value: 1,
                          groupValue: val,
                          onChanged: (value) {
                            setState(() {
                              val = value as int;
                            });
                          },
                          activeColor: Colors.green,
                          toggleable: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: const Text(
                          "10 MILLION IN 2000",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Anton",
                          ),
                        ),
                        leading: Radio(
                          value: 2,
                          groupValue: val,
                          onChanged: (value) {
                            setState(() {
                              val = value as int;
                            });
                          },
                          activeColor: Colors.green,
                          toggleable: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: const Text(
                          "41 MILLION IN 2015",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Anton",
                          ),
                        ),
                        leading: Radio(
                          value: 3,
                          groupValue: val,
                          onChanged: (value) {
                            setState(() {
                              val = value as int;
                            });
                          },
                          activeColor: Colors.green,
                          toggleable: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: const Text(
                          "24 MILLION IN 2040",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Anton",
                          ),
                        ),
                        leading: Radio(
                          value: 4,
                          groupValue: val,
                          onChanged: (value) {
                            setState(() {
                              val = value as int;
                            });
                          },
                          activeColor: Colors.green,
                          toggleable: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 40,
                left: 40,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonTheme(
                    height: 65,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: RaisedButton(
                      elevation: 50,
                      color: Colors.lightBlue,
                      onPressed: () {},
                      child: const Text(
                        "HELP",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 28.0, color: Colors.white),
                      ),
                    ),
                  ),
                  ButtonTheme(
                    height: 65,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: RaisedButton(
                      elevation: 50,
                      onPressed: () {},
                      color: Colors.orangeAccent,
                      child: const Text(
                        "NEXT",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 28.0, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
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
