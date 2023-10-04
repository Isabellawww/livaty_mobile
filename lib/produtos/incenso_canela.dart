// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_livaty/produtos/preview.dart';

class Incenso_Canela extends StatefulWidget {
  const Incenso_Canela({super.key});

  @override
  State<Incenso_Canela> createState() => _Incenso_CanelaState();
}

class _Incenso_CanelaState extends State<Incenso_Canela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA76B12), Color(0xFFA71168)],
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PAPERCOLOR",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Mochila Kipling",
                  style: TextStyle(fontSize: 30),
                ),
                CarouselSlider(
                  options: CarouselOptions(height: 325.0, viewportFraction: 1),
                  items: [0].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.white),
                          //child: Image(image: NetworkImage(Image[i])));
                        );
                      },
                    );
                  }).toList(),
                ),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Preview(
                          "https://static.cdnlive.com.br/uploads/267/produto/16149698878380_zoom.jpg"),
                    ],
                  ),
                ),
                Text(
                  "RS124,00",
                  style: TextStyle(
                      fontSize: 30,
                      color: const Color.fromARGB(255, 28, 134, 31)),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Comprar",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50)),
                ),
                Divider(),
                Text(
                  """
As canetas mais disputadas na época da escola em um super conjunto completo.
O Kit de canetas à base de água da Stabilo tem o design clássico da marca em um kit com 15 canetas. Fabricada com altíssimo padrão de qualidade, a caneta Stabilo Point 88 possui alto rendimento, longa duração, ponta com reforço metálico e traço de 0.4mm (super fina).
Ela é uma caneta multiuso, utilizada desde crianças e jovens até estudantes e profissionais.
""",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
