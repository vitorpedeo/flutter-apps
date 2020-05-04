import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/eu.jpg"),
              ),
              Text(
                "Vitor Pereira",
                style: TextStyle(
                  fontFamily: "PatrickHand",
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontFamily: "SourceSansPro",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "62 998112338",
                    style: TextStyle(
                      fontFamily: "SourceSansPro",
                      fontSize: 20,
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "vitorpedeo@hotmail.com",
                    style: TextStyle(
                      fontFamily: "SourceSansPro",
                      fontSize: 20,
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Conteúdos:

// SafeArea() => widget que ocupa apenas a parte modificável do app(por exemplo, ele não ocupa a barra de notificações).

// StatelessWidget => widget que não possui um estado.

// Build method => ao realizar o hot reload ou hot restart, o Flutter busca esse método para realizar a ação
// de atualização do app. Como o nome indica, o build constrói o app.

// Container() => mesma função do container no campo do desenvolvimento web.
// margin: EdgeInsets.only(direction) para apenas uma direção ou EdgeInsets.fromLTRB(left, top, right, bottom)
// para todas as direções.
// padding: EdgeInsets.only(direction) para apenas uma direção ou EdgeInsets.fromLTRB(left, top, right, bottom)
// para todas as direções.

// SizedBox() => espaço entre os filhos de uma Column/Row.

// Column() => consegue abrigar vários filhos no eixo vertical(coluna).
// mainAxisSize: define o tamanho da coluna.
// mainAxisAlignment: funciona como o Justify Content do CSS.
// crossAxisAlignment: alinhamento horizontal.

// Row() => consegue abrigar vários filhos no eixo horizontal(linha).
// mainAxisSize: define o tamanho da row.
// mainAxisAlignment: funciona como o Justify Content do CSS.
// crossAxisAlignment: alinhamento vertical.
