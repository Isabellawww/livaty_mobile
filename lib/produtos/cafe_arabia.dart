import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/LivaTy/carrinhorepository.dart';
import 'package:flutter_application_livaty/LivaTy/produto.dart';
import 'package:flutter_application_livaty/appbar.dart';

class Cafe_arabia extends StatefulWidget {
  const Cafe_arabia({super.key});

  @override
  State<Cafe_arabia> createState() => _Cafe_arabiaState();
}

class _Cafe_arabiaState extends State<Cafe_arabia> {
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
                    "Café Expresso",
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
                      TextSpan(
                          text: ' ', style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: '120,00',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough)),
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
                                    child: Text('Descrição'),
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
              ],
            ),
          ),
        ));
  }
}
