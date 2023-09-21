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

  void _play() {
    int i = Random().nextInt(choicesPaths.length);
    setState( () {
      appChoicePath = choicesPaths[i];
    })
;  }

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
            Text("Escolha uma opção!"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Image.asset("images/pedra.png", height: 80),
                  onTap: _play,
                ),
                GestureDetector(
                  child: Image.asset("images/papel.png", height: 80),
                  onTap: _play,
                ),
                GestureDetector(
                  child: Image.asset("images/tesoura.png", height: 80),
                  onTap: _play,
                )
              ],)
          ]
        )
      )
    );
  }
}