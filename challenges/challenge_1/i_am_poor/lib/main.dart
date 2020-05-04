import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("I Am Poor"),
            backgroundColor: Colors.brown[600],
            centerTitle: true,
          ),
          backgroundColor: Colors.brown[300],
          body: Center(
            child: Image(
              image: AssetImage("images/wallet.png"),
            ),
          ),
        ),
      ),
    );
