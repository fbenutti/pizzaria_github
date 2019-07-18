import 'package:flutter/material.dart';
import 'package:pizzaria/models/pizza.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Pizza> listaPizzas = [
    Pizza.preenchida("Batata Frita",
        "batata frita, molho de tomate,  mussarela, ovo, azeitona e tomate.",
        "images/pizzas/pizza_batata_frita.png"),
    Pizza.preenchida("Calabresa",
        "calabresa, molho de tomate,  mussarela, ovo, azeitona e tomate.",
        "images/pizzas/pizza_calabresa.png"),
    Pizza.preenchida("Calabresa",
        "calabresa, molho de tomate,  mussarela, ovo, azeitona e tomate.",
        "images/pizzas/pizza_calabresa.png"),
    Pizza.preenchida("Calabresa",
        "calabresa, molho de tomate,  mussarela, ovo, azeitona e tomate.",
        "images/pizzas/pizza_calabresa.png"),
    Pizza.preenchida("Calabresa",
        "calabresa, molho de tomate,  mussarela, ovo, azeitona e tomate.",
        "images/pizzas/pizza_calabresa.png"),
    Pizza.preenchida("Calabresa",
        "calabresa, molho de tomate,  mussarela, ovo, azeitona e tomate.",
        "images/pizzas/pizza_calabresa.png"),
    Pizza.preenchida("Calabresa",
        "calabresa, molho de tomate,  mussarela, ovo, azeitona e tomate.",
        "images/pizzas/pizza_calabresa.png"),
    Pizza.preenchida("Calabresa",
        "calabresa, molho de tomate,  mussarela, ovo, azeitona e tomate.",
        "images/pizzas/pizza_calabresa.png"),
    Pizza.preenchida("Calabresa",
        "calabresa, molho de tomate,  mussarela, ovo, azeitona e tomate.",
        "images/pizzas/pizza_calabresa.png"),
    Pizza.preenchida("Calabresa",
        "calabresa, molho de tomate,  mussarela, ovo, azeitona e tomate.",
        "images/pizzas/pizza_calabresa.png"),
    Pizza.preenchida("Calabresa",
        "calabresa, molho de tomate,  mussarela, ovo, azeitona e tomate.",
        "images/pizzas/pizza_calabresa.png"),
    Pizza.preenchida("Calabresa",
        "calabresa, molho de tomate,  mussarela, ovo, azeitona e tomate.",
        "images/pizzas/pizza_calabresa.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 30, 45, 62),
          child: Column(
            children: <Widget>[
              //AppBar(automaticallyImplyLeading: false, title: Text("Escolha:")),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:
                        /*CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 75,
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.black,
                        size: 100.0,
                      ),
                    ),*/
                        Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 150.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 26.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.list, color: Colors.white),
                title: Text(
                  "Cardápio",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  /*Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        //Esse null tem que ser substituído pela página que queremos
                        builder: (BuildContext context) => null),
                  );*/
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        //Text() cria um texto na tela, só. É uma label.
        title: Row(
          children: <Widget>[
            Icon(Icons.fastfood),
            SizedBox(width: 5.0),
            Text(
              'Max Cooking',
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index){
        return Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(15),
              leading: CircleAvatar(
                backgroundImage:
                //Mudou de imagem no dispositivo (asset) para imagem da internet (network)
                AssetImage(listaPizzas[index].imagem),
              ),
              //Image(image: new AssetImage(produtos[index]['imagem']),width: 100,),
              title: Text(listaPizzas[index].nome),
              subtitle:
              Text('Ingredientes: ' + listaPizzas[index].ingredientes),
            ),
            Divider(color: Colors.blueGrey),
          ],
        );
      },
      itemCount: listaPizzas.length),
    );
  }
}
