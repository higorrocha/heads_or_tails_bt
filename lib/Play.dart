import 'package:flutter/material.dart';
import 'package:heads_or_tails/Result.dart';
import 'dart:math';

class Play extends StatefulWidget {
  const Play({Key? key}) : super(key: key);

  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {

  void _showResult(){

    var itens = ["head", "tail"];
    var number = Random().nextInt(itens.length);
    var result = itens[number];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Result(result)
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _showResult,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
