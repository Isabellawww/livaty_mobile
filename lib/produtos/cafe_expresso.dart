// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_livaty/produtos/preview.dart';

class Cafe_expresso extends StatefulWidget {
  const Cafe_expresso({super.key});

  @override
  State<Cafe_expresso> createState() => _Cafe_expressoState();
}

class _Cafe_expressoState extends State<Cafe_expresso> {
  List<String> imagens = [
    'https://img.kalunga.com.br/fotosdeprodutos/389528d.jpg',
    'https://img.kalunga.com.br/fotosdeprodutos/389528z_1.jpg?_gl=1*8c4bj7*_gcl_aw*R0NMLjE2ODYwOTc2OTkuQ2p3S0NBandzdnVqQmhBWEVpd0FfVVhuQUNvSEhpbE5ZTXdhbllGVTgzbEZRZXdUbjc5bnJrRWpscnJDaWZhOXp4X1NadzVMVnFuNkJob0NlQlVRQXZEX0J3RQ..*_gcl_au*NDYzNDM0NjY2LjE2ODYwOTc2OTk.&_ga=2.13238711.1261974346.1686097701-443843183.1686097701&_gac=1.149630532.1686097701.CjwKCAjwsvujBhAXEiwA_UXnACoHHilNYMwanYFU83lFQewTn79nrkEjlrrCifa9zx_SZw5LVqn6BhoCeBUQAvD_BwE',
  ];
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
                  "FABERCASTELL",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Lápis de cor",
                  style: TextStyle(fontSize: 30),
                ),
                CarouselSlider(
                  options: CarouselOptions(height: 325.0, viewportFraction: 1),
                  items: [0, 1, 2].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Image(image: NetworkImage(imagens[i])));
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
                          "https://img.kalunga.com.br/fotosdeprodutos/389528d.jpg"),
                      Preview(
                        "https://img.kalunga.com.br/fotosdeprodutos/389528z_1.jpg?_gl=1*8c4bj7*_gcl_aw*R0NMLjE2ODYwOTc2OTkuQ2p3S0NBandzdnVqQmhBWEVpd0FfVVhuQUNvSEhpbE5ZTXdhbllGVTgzbEZRZXdUbjc5bnJrRWpscnJDaWZhOXp4X1NadzVMVnFuNkJob0NlQlVRQXZEX0J3RQ..*_gcl_au*NDYzNDM0NjY2LjE2ODYwOTc2OTk.&_ga=2.13238711.1261974346.1686097701-443843183.1686097701&_gac=1.149630532.1686097701.CjwKCAjwsvujBhAXEiwA_UXnACoHHilNYMwanYFU83lFQewTn79nrkEjlrrCifa9zx_SZw5LVqn6BhoCeBUQAvD_BwE",
                      ),
                      Preview(
                          "https://img.kalunga.com.br/fotosdeprodutos/389528z_3.jpg?_gl=1*3f8sp3*_gcl_aw*R0NMLjE2ODYwOTc2OTkuQ2p3S0NBandzdnVqQmhBWEVpd0FfVVhuQUNvSEhpbE5ZTXdhbllGVTgzbEZRZXdUbjc5bnJrRWpscnJDaWZhOXp4X1NadzVMVnFuNkJob0NlQlVRQXZEX0J3RQ..*_gcl_au*NDYzNDM0NjY2LjE2ODYwOTc2OTk.&_ga=2.72542611.1261974346.1686097701-443843183.1686097701&_gac=1.57231960.1686097701.CjwKCAjwsvujBhAXEiwA_UXnACoHHilNYMwanYFU83lFQewTn79nrkEjlrrCifa9zx_SZw5LVqn6BhoCeBUQAvD_BwE")
                    ],
                  ),
                ),
                Text(
                  "RS220,00",
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
Lapis de Cor 100 ecolapis supersoft - Faber Castell.
O Ecolápis de Cor Faber-Castell SuperSoft possui a exclusiva mina supermacia, que garante o máximo de conforto ao pintar.
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
