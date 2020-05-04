import 'package:flutter/material.dart';

// A função main é o ponto de partida para o Flutter.
// Semelhante ao render do React.
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("I Am Rich"),
            centerTitle: true,
            backgroundColor: Colors.blueGrey[900],
          ),
          backgroundColor: Colors.blueGrey,
          body: Center(
            child: Image(
              image: AssetImage("images/diamond.png"),
            ),
          ),
        ),
      ),
    );
