import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Meme Sounds",
            style: TextStyle(
              fontFamily: "Ubuntu",
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: Color(0xffc6c6c6),
        body: MemeSounds(),
      ),
    ));

void playMeme(String memeName) {
  final player = AudioCache();
  player.play("$memeName.mp3");
}

Widget buildCard({String memeTitle, String audioName}) {
  return Container(
    margin: EdgeInsets.fromLTRB(15, 5, 15, 10),
    padding: EdgeInsets.symmetric(
      vertical: 15,
      horizontal: 20,
    ),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 3,
            spreadRadius: 2,
            offset: Offset(1, 2),
          ),
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(Icons.audiotrack),
        Text(
          memeTitle,
          style: TextStyle(
            fontFamily: "Ubuntu",
            fontSize: 18,
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            playMeme(audioName);
          },
          backgroundColor: Colors.black,
          child: Icon(Icons.play_arrow),
        ),
      ],
    ),
  );
}

class MemeSounds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildCard(memeTitle: "Ai meu c#", audioName: "ai-meu-cu"),
            buildCard(memeTitle: "Birl", audioName: "birl"),
            buildCard(memeTitle: "Churrasqueira", audioName: "churrasqueira"),
            buildCard(memeTitle: "Me derrumbaram aqui", audioName: "derruba"),
            buildCard(memeTitle: "E morreu", audioName: "e-morreu"),
            buildCard(memeTitle: "EOQ", audioName: "eoq"),
            buildCard(memeTitle: "Meu ovo", audioName: "meuovo"),
            buildCard(memeTitle: "Oi meu chapa", audioName: "oi-meu-chapa"),
            buildCard(memeTitle: "Rapaz", audioName: "rapaz"),
          ],
        ),
      ),
    );
  }
}
