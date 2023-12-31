import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/LivaTy/cards.dart';
import 'package:flutter_application_livaty/appbar.dart';
import 'package:flutter_application_livaty/perfil/categoria.dart';
import 'package:flutter_application_livaty/perfil/gaveta.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_livaty/produto_selecionados/cafes.dart';
import 'package:flutter_application_livaty/produto_selecionados/chas.dart';
import 'package:flutter_application_livaty/produto_selecionados/incensos.dart';
import 'package:flutter_application_livaty/produtos/cafe_expresso.dart';
import 'package:flutter_application_livaty/produtos/incenso_canela.dart';
import 'package:flutter_application_livaty/produtos/produto_chaverde.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imagens = [
    'https://images.unsplash.com/photo-1627435601361-ec25f5b1d0e5?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1676508230445-e0a9a9fc7f0f?auto=format&fit=crop&q=80&w=1783&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1626937526107-ca0be0eecccd?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  ];

  ScrollController _scrollController = ScrollController();

  void paraCima() {
    _scrollController.animateTo(0,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  bool isAtTop = true;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset <= 0 && !isAtTop) {
        setState(() {
          isAtTop = true;
        });
      } else if (_scrollController.offset > 0 && isAtTop) {
        setState(() {
          isAtTop = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        context,
        title: "LivaTy",
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      drawer: Gaveta(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 0,
            ),
            CarouselSlider(
              options: CarouselOptions(height: 350, viewportFraction: 1),
              items: [0, 1, 2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        child: Image(image: NetworkImage(imagens[i])));
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoriaHome(
                      "images/cha_verdee.png", "Chás", "medium", Chas()),
                  CategoriaHome(
                      "images/cafee_e.png", "Cafés", "large", Cafes()),
                  //CategoriaHome("images/cha.png","Acessórios"),
                  CategoriaHome(
                      "images/incensoss.png", "Incensos", "medium", incensos()),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Cards("assets/images/cha_verdee.png", "Chá Verde",
                            "2,00", ChaVerde()),
                        // no 'LoginPAge ()' precisa colocar o hiperlink da página!!
                        Cards("assets/images/cafee_e.png", "Café Expresso",
                            "16,00", Cafe_expresso()),
                        Cards(
                            "assets/images/incensoss.png",
                            "Kit de Incenso Natural",
                            "90,00",
                            Incenso_Canela()),
                      ],
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Cards("assets/images/cha_preto.png", "Chá Preto",
                            "4,90", ChaVerde()),
                        // no 'LoginPAge ()' precisa colocar o hiperlink da página!!
                        Cards("assets/images/cafe_arabico.png", "Café Arábico",
                            "16,00", Cafe_expresso()),
                        Cards("assets/images/incenso_mirra.png",
                            "Incenso Mirra", "33,90", Incenso_Canela()),
                      ],
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Cards("assets/images/cha_mate.png", "Chá Mate", "6,00",
                            ChaVerde()),
                        Cards("assets/images/cafe_caramel.png",
                            "Café Starbucks", "28,00", Cafe_expresso()),
                        Cards("assets/images/incenso_sandalo.png",
                            "Incenso Sandalo", "38,90", Incenso_Canela()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: isAtTop
          ? null // quando no topo, remove o botão
          : FloatingActionButton(
              onPressed: () {
                _scrollController.animateTo(0,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.linear);
              },
              child: const Icon(Icons.arrow_upward),
              backgroundColor: Colors.black,
            ),
    );
  }
}
