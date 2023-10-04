// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/produtos/preview.dart';

class ChaVerde extends StatefulWidget {
  const ChaVerde({super.key});

  @override
  State<ChaVerde> createState() => _ChaVerdeState();
}

class _ChaVerdeState extends State<ChaVerde> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: Colors.green.shade50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Chás",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Chá Verde",
              style: TextStyle(fontSize: 50),
            ),
            CarouselSlider(
              options: CarouselOptions(height: 325.0, viewportFraction: 1),
              items: [0, 1, 2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.white),
                        //child: Image(image: NetworkImage(Image[i])));
                );},
                );
              }).toList(),
            ),
            Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Preview(
                          "https://images.tcdn.com.br/img/img_prod/639335/caderno_a4_happy_90g_1_materia_80_folhas_tilibra_13907_1_7710633bfdbf2db5892e46581a22ba58.jpeg"),
                      Preview(
                        "https://images.tcdn.com.br/img/img_prod/639335/caderno_a4_happy_90g_1_materia_80_folhas_tilibra_13907_6_77b8ed28735da110935b3a40308b2194.jpeg",
                      ),
                      Preview(
                          "https://images.tcdn.com.br/img/img_prod/639335/caderno_a4_happy_90g_1_materia_80_folhas_tilibra_13907_5_830321167d8b40321a9574d2defbe0fe.jpeg")
                    ],
        ),),],
        ),
      ),
    ));
  }
}
