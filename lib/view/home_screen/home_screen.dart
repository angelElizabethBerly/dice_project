import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int diceValue = 0;
  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      "assets//button.png",
      "assets//d1.jpg",
      "assets//d2.png",
      "assets//d3.png",
      "assets//d4.png",
      "assets//d5.png",
      "assets//d6.png"
    ];

    return Scaffold(
      body: InkWell(
        onTap: () {
          setState(() {
            diceValue = Random().nextInt(6) + 1;
            print(diceValue);
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Container(
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(imageList[diceValue]))),
          ),
        ),
      ),
    );
  }
}
