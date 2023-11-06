// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/LivaTy/carrinhorepository.dart';
import 'package:flutter_application_livaty/LivaTy/produto.dart';
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
        appBar: NavBar(
          context,
          title: "Produto",
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Chá Verde",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(height: 325.0, viewportFraction: 1),
                  items: [0, 1, 2].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255)),
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
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          child: RichText(
                              text: TextSpan(children: [
                        TextSpan(text: 'R\$'),
                        TextSpan(
                            text: '100',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 106, 150, 108))),
                        TextSpan(text: ',00'),
                        TextSpan(text: ' '),
                        TextSpan(
                            text: '120,00',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough))
                      ]))),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Café Expresso',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),

                /*Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Preview(
                        "https://th.bing.com/th/id/OIP.Y7LmVSY4bitSAlggiiSDnQHaE8?pid=ImgDet&rs=1"),
                      Preview(
                        "https://simoesfilhoonline.com.br/wp-content/uploads/2019/11/ch%C3%A1-para-emagrecer-df.jpg"),
                      Preview(
                        "https://th.bing.com/th/id/OIP.HSTCJ4vgI1Fcbd-xpS__mgHaE8?pid=ImgDet&rs=1"),
                    ],
        ),
        ),*/
                Container(
                  width: 1000,
                  child: ElevatedButton(
                    child: Icon(Icons.shopping_cart),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 106, 150, 108)),
                    onPressed: () {
                      Carrinho.adicionarProduto(MyProduto("Café expresso", 90));
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Icon(
                                Icons.check_circle,
                                color: Color.fromARGB(255, 106, 150, 108),
                                size: 50,
                              ),
                              content: Text(
                                  'Produto adicionado ao carrinho com sucesso'),
                            );
                          });
                    },
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Descrição'),
                              content: Column(
                                children: [
                                  Expanded(
                                    child: Text('Descriaaaaaaa'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      'Fechar',
                                      style: TextStyle(
                                          color: Colors.teal.shade900),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Text('Descrição'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
