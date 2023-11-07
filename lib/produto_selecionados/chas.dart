import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/LivaTy/cards.dart';
import 'package:flutter_application_livaty/appbar.dart';
import 'package:flutter_application_livaty/produtos/produto_chaverde.dart';

class Chas extends StatefulWidget {
  const Chas({super.key});

  @override
  State<Chas> createState() => _ChasState();
}

class _ChasState extends State<Chas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        context,
        title: "Chás para a vida inteira",
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Cards("assets/images/cha_verdee.png", "chá verde", "2,00",
                ChaVerde()),
          ],
        ),
      ),
    );
  }
}
