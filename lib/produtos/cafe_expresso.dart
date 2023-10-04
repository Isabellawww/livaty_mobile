// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_livaty/produtos/preview.dart';

class Cafe_expresso extends StatefulWidget {
  const Cafe_expresso({super.key});

  @override
  State<Cafe_expresso> createState() => _Cafe_expressoState();
}

class _Cafe_expressoState extends State<Cafe_expresso> {
  List<String> image = [
    'https://th.bing.com/th/id/OIP.vpTGS7jp4KRTWKC2pfOCDwHaEK?pid=ImgDet&rs=1',
    'https://th.bing.com/th/id/R.8d2c3e9d62c775ace67cbd714fdfff73?rik=ZM5tjIUfjb6ScA&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/OIP.fT3HCRuhTqtKqgNMMFQxagHaGt?pid=ImgDet&w=540&h=489&rs=1',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: NavBar(context, title: "Produto", centerTitle: true, backgroundColor: Colors.green,),
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
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
                        "https://th.bing.com/th/id/OIP.vpTGS7jp4KRTWKC2pfOCDwHaEK?pid=ImgDet&rs=1"),
                      Preview(
                        "https://th.bing.com/th/id/R.8d2c3e9d62c775ace67cbd714fdfff73?rik=ZM5tjIUfjb6ScA&pid=ImgRaw&r=0"),
                      Preview(
                        "https://th.bing.com/th/id/OIP.fT3HCRuhTqtKqgNMMFQxagHaGt?pid=ImgDet&w=540&h=489&rs=1"),
                    ],
        ),),],
        ),
      ),
    ));
  }
}

