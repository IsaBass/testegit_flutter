/*
import 'package:flutter/material.dart';

void main() => runApp(PrimeiroApp());


class PrimeiroApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Oi Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Oi Flutter'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';

class MinhaHomeDrawer extends StatelessWidget {
  const MinhaHomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Fulano de Tal"),
              accountEmail: Text("fulano@mail.com"),
              currentAccountPicture: CircleAvatar(child: Text("FULANO")),
            ), //UserAccoutsDrawerHeader
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha Conta"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Meus pedidos"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favoritos"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Meu App FWE"),
      ),
      body: const Column(
        children: [
          Text("Aqui o body da home"),
        ],
      ),
    );
  }
}


/* 
class MeuScaffold extends StatelessWidget {
  const MeuScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Meu AppBar"),
        ),
        body: Column(
          children: [
            MeuAppBar(
              title: Text(
                'Desafio 01',
                style: Theme.of(context).primaryTextTheme.titleLarge,
              ),
            ),
            const Expanded(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Digite aqui o N1",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 4.0)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Digite aqui o N2",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 4.0)),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextButton(
                        onPressed: calculeMedia, child: Text("Calcular Média"))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void calculeMedia() {}

class MeuAppBar extends StatelessWidget {
  const MeuAppBar({required this.title, Key? key}) : super(key: key);
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Um Menu',
            onPressed: null, // null desabilita o botão
          ),
          // Expanded expande seu child para ocupar o espaço livre.
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Pesquisar',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
 */