import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool change = true;
  void buttonEyes(){
    setState(() {
      change = !change;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: change ? const Color.fromRGBO(230, 230, 230, 10): const Color.fromRGBO(38, 38, 38, 10),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/copia.jpg"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:  <Widget>[
                        Text(
                          "Olá",
                          style: TextStyle(
                            fontFamily: 'MarkerFelt',
                            fontSize: 20,
                            color: change ? const Color.fromRGBO(83, 39, 165, 10): const Color.fromRGBO(212, 208, 223,10),                            
                          ),
                        ),
                        Text(
                          "Marcela!",
                          style: TextStyle(
                            fontFamily: 'MarkerFelt',
                            fontSize: 40,
                            color: change ? const Color.fromRGBO(34, 6, 92, 10): Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Parabéns! Esse mês você fez",
                      style: TextStyle(
                        fontFamily: 'MarkerFelt',
                        fontSize: 20,
                        color: change ? const Color.fromRGBO(83, 39, 165, 10): const Color.fromRGBO(212, 208, 223,10),
                      ),
                    ),
                   IconButton(
                      onPressed:buttonEyes,
                      color: change ? const Color(0xFF4F426F) : const Color(0xFF4F426F),
                      icon: Icon(change ? Icons.visibility : Icons.visibility_off)
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: change ? const Color.fromRGBO(215, 211, 226, 10): const Color.fromRGBO(33, 4, 87, 10),
                  ),
                  height: MediaQuery.of(context).size.height / 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding:const EdgeInsets.only(left: 40),
                                  child: Text(
                                    change ? "12" : "*",
                                    style: TextStyle(
                                      color: change ? const Color.fromRGBO(83, 39, 165, 10) : const Color.fromARGB(255, 97, 77, 131),
                                      fontFamily: 'ConcertOne',
                                      fontSize: 17,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.shop_2,
                                  color: change ? const Color.fromRGBO(34, 6, 92, 10): Colors.white,
                                  size: 50,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "novos",
                                      style: TextStyle(
                                        color: change ? const Color.fromRGBO(83, 39, 165, 10) : Colors.white,
                                        fontFamily: 'MarkerFelt',
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      "pedidos",
                                      style: TextStyle(
                                        color: change ? const Color.fromRGBO(83, 39, 165, 10) : Colors.white,
                                        fontFamily: 'MarkerFelt',
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(
                                    change ? "20" : "*",
                                    style: TextStyle(
                                      color: change ? const Color.fromRGBO(83, 39, 165, 10) : const Color.fromARGB(255, 97, 77, 131),
                                      fontFamily: 'ConcertOne',
                                      fontSize: 17,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.people,
                                  color: change ? const Color.fromRGBO(34, 6, 92, 10): Colors.white,
                                  size: 50,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "novos",
                                      style: TextStyle(
                                        color: change ? const Color.fromRGBO(83, 39, 165, 10) : Colors.white,
                                        fontFamily: 'MarkerFelt',
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      "clientes",
                                      style: TextStyle(
                                        color: change ? const Color.fromRGBO(83, 39, 165, 10) : Colors.white,
                                        fontFamily: 'MarkerFelt',
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(
                                    change ? "20" : "*",
                                    style: TextStyle(
                                      color: change ? const Color.fromRGBO(83, 39, 165, 10) : const Color.fromARGB(255, 97, 77, 131),
                                      fontFamily: 'ConcertOne',
                                      fontSize: 17,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_city,
                                  color: change ? const Color.fromRGBO(34, 6, 92, 10): Colors.white,
                                  size: 50,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "novas",
                                      style: TextStyle(
                                        color: change ? const Color.fromRGBO(83, 39, 165, 10) : Colors.white,
                                        fontFamily: 'MarkerFelt',
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      "cidades",
                                      style: TextStyle(
                                        color: change ? const Color.fromRGBO(83, 39, 165, 10) : Colors.white,
                                        fontFamily: 'MarkerFelt',
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: change ? const Color.fromRGBO(215, 211, 226, 10): const Color.fromRGBO(33, 4, 87, 10),
                  ),
                  height: MediaQuery.of(context).size.height / 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.shop_2,
                          color: change ? const Color.fromRGBO(34, 6, 92, 10): Colors.white,
                          size: 80,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              change ? "R\$ 34.000,00" : "R\$ -,--",
                              style: const TextStyle(
                                color:  Color.fromRGBO(83, 39, 165, 10),
                                fontFamily: 'ConcertOne',
                                fontSize:35,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "em novos pedidos",
                                style: TextStyle(
                                  color: change ? const Color.fromRGBO(34, 6, 92, 10) : Colors.white,
                                  fontFamily: 'MarkerFelt',
                                  fontSize: 25,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        backgroundColor: Color.fromRGBO(34, 6, 92, 10),
        foregroundColor: Colors.white,
        onPressed: null,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        color: change ? const Color.fromRGBO(230, 230, 230, 10): const Color.fromRGBO(38, 38, 38, 10),
        child: SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                    color: change ? const Color.fromRGBO(34, 6, 92, 10): Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: change ? Colors.white: const Color.fromRGBO(34, 6, 92, 10),
                      ),
                      Text(
                        " Home",
                        style: TextStyle(
                          color: change ? Colors.white: const Color.fromRGBO(34, 6, 92, 10),
                          fontFamily: 'MarkerFelt',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 45,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 97, 77, 131),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shop_2,
                        color: change ? Colors.white: const Color.fromRGBO(34, 6, 92, 10)
                      ),          
                    ],
                  ),
                ),
                Container(
                  width: 45,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 97, 77, 131),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.people,
                        color: change ? Colors.white: const Color.fromRGBO(34, 6, 92, 10)
                      ),          
                    ],
                  ),
                ),
                Container(
                  width: 45,
                  height: 40,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 97, 77, 131),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.show_chart,
                        color: change ? Colors.white: const Color.fromRGBO(34, 6, 92, 10)
                      ),          
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
