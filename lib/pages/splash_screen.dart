import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      return Navigator.pushNamed(context, "/home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Widget usado para EMPILHAR outros widgets
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              //Criar uma cor sólida
              color: Color.fromARGB(255, 255, 186, 92),
              //Criar uma cor gradiente
              //Esse cara, obviamente, precisa de uma lista de cores
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 242, 126, 94),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 242, 242, 29)
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Esse cara cria uma imagem de maneira circular
              /*CircleAvatar(
                backgroundColor: Colors.white,
                radius: 125,
                child: Image.asset(
                  "images/logo.png",
                  fit: BoxFit.scaleDown,
                  height: 200,
                  width: 200,
                ),
              ),*/
              Padding(
                padding: EdgeInsets.only(
                  left: 90,
                  right: 60,
                ),
                child: Image.asset(
                  "images/logo.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Mai'que Pizza",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 26.0
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
