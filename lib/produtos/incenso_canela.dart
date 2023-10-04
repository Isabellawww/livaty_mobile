// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_livaty/produtos/preview.dart';
import 'package:flutter_application_livaty/appbar.dart';

class Incenso_Canela extends StatefulWidget {
  const Incenso_Canela({super.key});

  @override
  State<Incenso_Canela> createState() => _Incenso_CanelaState();
}

class _Incenso_CanelaState extends State<Incenso_Canela> {
  List<String> image = [
    'assets/images/incensos_categoria.png',
    'https://http2.mlstatic.com/D_NQ_NP_638518-MLB32731720646_112019-O.webp',
    'https://http2.mlstatic.com/D_NQ_NP_743725-MLU69846539079_062023-O.webp',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(context, title: "Produto", centerTitle: true, backgroundColor: Colors.green,),
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: const Color.fromARGB(255, 0, 0, 0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child:
             Text("Chá Verde", style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            ),
            CarouselSlider(
              options: CarouselOptions(height: 325.0, viewportFraction: 1),
              items: [0, 1, 2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: const Color.fromARGB(255, 0, 0, 0)),
                        child: Image(image: NetworkImage(image[i])));
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
                        "assets/images/incensos_categoria.png"),
                      Preview(
                        "https://http2.mlstatic.com/D_NQ_NP_638518-MLB32731720646_112019-O.webp"),
                      Preview(
                        "https://http2.mlstatic.com/D_NQ_NP_743725-MLU69846539079_062023-O.webp"),
                    ],
        ),),],
        ),
      ),
    ));
  }
}