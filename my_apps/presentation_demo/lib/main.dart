import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage("images/money.jpg"),
                radius: 70,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Aprenda a economizar",
                style: TextStyle(
                  fontFamily: "MontserratBold",
                  fontSize: 30,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "AppName irá te auxiliar de maneira prática e fácil!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "MontserratRegular",
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.indigo[900],
                      radius: 10,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black38,
                      radius: 10,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black38,
                      radius: 10,
                    ),
                  ],
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                onPressed: () {},
                color: Colors.indigo[900],
                child: Text(
                  "Próximo",
                  style: TextStyle(
                    fontFamily: "MontserratBold",
                    fontSize: 20,
                    color: Colors.white,
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
