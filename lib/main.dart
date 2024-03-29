import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/splash_screen.dart';

//Se quiser, podemos criar rotas para ficar mais fácil de navegar!!
var routes = <String, WidgetBuilder>{
  "/splash": (BuildContext context) => SplashScreenPage(),
  "/home": (BuildContext context) => HomePage(),
};

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color.fromARGB(255, 128, 128, 128)),
      ),
      debugShowCheckedModeBanner: false,
      title: "Pizzaria Mai'que pizza",
      home: SplashScreenPage(),
      routes: routes,

      //Adicionando um comentário pra poder modificar depois.

    );
  }
}
