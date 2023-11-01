// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_livaty/LivaTy/carrinhorepository.dart';
import 'package:flutter_application_livaty/LivaTy/produto.dart';
import 'package:flutter_application_livaty/produtos/preview.dart';
import 'package:flutter_application_livaty/appbar.dart';

class Incenso_Canela extends StatefulWidget {
  const Incenso_Canela({super.key});

  @override
  State<Incenso_Canela> createState() => _Incenso_CanelaState();
}

class _Incenso_CanelaState extends State<Incenso_Canela> {
  List<String> image = [
    'assets/images/incensoss.png',
    'https://http2.mlstatic.com/D_NQ_NP_638518-MLB32731720646_112019-O.webp',
    'https://http2.mlstatic.com/D_NQ_NP_743725-MLU69846539079_062023-O.webp',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavBar(
          context,
          title: "Produto",
          centerTitle: true,
          backgroundColor: Colors.green,
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
                      Preview("assets/images/incensos_categoria.png"),
                      Preview(
                          "https://http2.mlstatic.com/D_NQ_NP_638518-MLB32731720646_112019-O.webp"),
                      Preview(
                          "https://http2.mlstatic.com/D_NQ_NP_743725-MLU69846539079_062023-O.webp"),
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
                      'Incenso de Canela',
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
                      Carrinho.adicionarProduto(
                          MyProduto("Incenso de canela", 90));
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
                )
              ],
            ),
          ),
        ));
  }
}
