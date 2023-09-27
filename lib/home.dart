import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'LivaTy/cards.dart';
import 'appbar.dart';
import 'perfil/cadastro.dart';
import 'perfil/categoria.dart';
import 'perfil/gaveta.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> imagens= [
  'https://cdn.pixabay.com/photo/2018/03/19/18/20/tea-time-3240766_1280.jpg',

  'https://cdn.pixabay.com/photo/2018/03/19/18/20/tea-time-3240766_1280.jpg',

  'https://cdn.pixabay.com/photo/2018/03/19/18/20/tea-time-3240766_1280.jpg'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        context,
        title: "LivaTy", backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      drawer: Gaveta(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 40,
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
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoriaHome("images/cha.png","Chás"),
                    CategoriaHome("images/cha.png","Cafés"),
                    CategoriaHome("images/cha.png","Acessórios"),
                    CategoriaHome("images/cha.png","Mais Vendidos"),


                  ],
                ),
              ),

              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(color: Colors.white30),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      margin: 
                      EdgeInsets.symmetric(vertical: 20,
                      horizontal: 10),
                      height: 320,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Cards("assets/images/cha.png", "chá verde", "250,00", LoginPage()),
                          // no 'LoginPAge ()' precisa colocar o hiperlink da página!!


                        ],
                      ),
                    )
                  ],
                ),
              )
        ],
        
      )),
      


    );
  }
}
