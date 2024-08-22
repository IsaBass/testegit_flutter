import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(
    MaterialApp(
      title: 'App Pós IMES',
      home: const SafeArea(
        child: MinhaHomeBottonBar(),
      ),
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MinhaHomeBottonBar extends StatefulWidget {
  const MinhaHomeBottonBar({super.key});

  @override
  State<MinhaHomeBottonBar> createState() => _MinhaHomeBottonBarState();
}

class _MinhaHomeBottonBarState extends State<MinhaHomeBottonBar> {
  TextEditingController _controller = TextEditingController();
  String inputString = "Definir Usuário";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo de AlertDialog"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Minha Conta"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: "Meus Pedidos"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favoritos"),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(inputString),
            Container(height: 20),
            ElevatedButton(
              child: Text("Clique para definir Usuário"),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Digite o nome do usuário"),
                      content: TextFormField(controller: _controller),
                      actions: <Widget>[
                        TextButton(
                          child: Text("OK"),
                          onPressed: () {
                            Navigator.pop(context, _controller.text);
                          },
                        )
                      ],
                    );
                  },
                ).then((val) {
                  setState(() {
                    inputString = val;
                  });
                });
              },
            ),
            Container(height: 20),
            // BOTAO 1º ALERT DIALOG
            ElevatedButton(
              child: const Text("1º ALERT DIALOG"),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Parabéns"),
                      content: const Text(
                          "Você criou a sua primeira caixa de diálogo usando o AlertDialog."),
                      actions: <Widget>[
                        TextButton(
                          child: const Text("Fechar"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
