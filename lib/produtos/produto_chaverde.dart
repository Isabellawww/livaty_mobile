// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sort_child_properties_last
import 'package:flutter_application_livaty/LivaTy/carrinhorepository.dart';
import 'package:flutter_application_livaty/LivaTy/produto.dart';
import 'package:flutter_application_livaty/appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ChaVerde extends StatefulWidget {
  const ChaVerde({super.key});

  @override
  State<ChaVerde> createState() => _ChaVerdeState();
}

class _ChaVerdeState extends State<ChaVerde> {
  List<String> image = [
    'https://th.bing.com/th/id/OIP.Y7LmVSY4bitSAlggiiSDnQHaE8?pid=ImgDet&rs=1',
    'https://simoesfilhoonline.com.br/wp-content/uploads/2019/11/ch%C3%A1-para-emagrecer-df.jpg',
    'https://th.bing.com/th/id/OIP.HSTCJ4vgI1Fcbd-xpS__mgHaE8?pid=ImgDet&rs=1',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavBar(
          context,
          title: "Produto",
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
          child: Column(
            children: [
              Center(
                child: Expanded(
                  child: Column(
                    children: [
                      CarouselSlider(
                        options:
                            CarouselOptions(height: 325.0, viewportFraction: 1),
                        items: [0, 1, 2].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  child: Center(
                                      child: Image(
                                          image: NetworkImage(image[i]))));
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      child: RichText(
                          text: TextSpan(children: [
                    TextSpan(
                        text: 'R\$', style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: '100',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 106, 150, 108))),
                    TextSpan(
                        text: ',00', style: TextStyle(color: Colors.black)),
                    TextSpan(text: ' ', style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: '120,00',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough)),
                  ]))),
                ),
              ]),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Chá verde',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.only(left: 7.0)),
                  Wrap(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 17.0,
                      ),
                    ),
                  ),
                ],
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
              SizedBox(
                height: 30.0,
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
                                    style:
                                        TextStyle(color: Colors.teal.shade900),
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
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: 1000,
                child: ElevatedButton(
                  child: Icon(Icons.shopping_cart),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 106, 150, 108)),
                  onPressed: () {
                    Carrinho.adicionarProduto(MyProduto("Chá Verde", 90));
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
                decoration: const BoxDecoration(color: Colors.amber //cor aqui
                    ),
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  children: [Text('Alooooooo')],
                ),
              )
            ],
          ),
        ));
  }
}
