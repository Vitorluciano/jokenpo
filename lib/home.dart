import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String appChoicePath = "images/default.png";
  List<String> choicesPaths = [
    "images/pedra.png",
    "images/papel.png",
    "images/tesoura.png"
  ];
  String msgFeedback = "Escolha uma opção!";
  String result = "";

  void _play(String userChoice) {
    int i = Random().nextInt(choicesPaths.length + 1);
    setState( () {
      appChoicePath = choicesPaths[i];
      if (appChoicePath == "images/pedra.png" && userChoice == "pedra") {
        result = "Empate";
      } else if (appChoicePath == "images/pedra.png" && userChoice == "papel") {
        result = "Você venceu";
      } else if (appChoicePath == "images/pedra.png" && userChoice == "tesoura") {
        result = "Você perdeu";
      } else if (appChoicePath == "images/papel.png" && userChoice == "pedra") {
        result = "Você perdeu";
      } else if (appChoicePath == "images/papel.png" && userChoice == "papel") {
        result = "Empate";
      } else if (appChoicePath == "images/papel.png" && userChoice == "tesoura") {
        result = "Você venceu";
      } else if (appChoicePath == "images/tesoura.png" && userChoice == "pedra") {
        result = "Você venceu";
      } else if (appChoicePath == "images/tesoura.png" && userChoice == "papel") {
        result = "Você perdeu";
      } else if (appChoicePath == "images/tesoura.png" && userChoice == "tesoura") {
        result = "Empate";
      }
    });
    

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("JokenPo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Escolha do App"),
            Image.asset(appChoicePath, height: 150),
            Text(msgFeedback),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Image.asset("images/pedra.png", height: 80),
                  onTap: () => _play("pedra")
                ),
                GestureDetector(
                  child: Image.asset("images/papel.png", height: 80),
                  onTap: () {
                    _play("papel");
                  }
                ),
                GestureDetector(
                  child: Image.asset("images/tesoura.png", height: 80),
                  onTap: () {
                    _play("tesoura");
                  }
                )
              ]),
            Text(result)
          ]
        )
      )
    );
  }
}