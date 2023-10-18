import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/LivaTy/cards.dart';
import 'package:flutter_application_livaty/appbar.dart';
import 'package:flutter_application_livaty/perfil/cadastro.dart';
import 'package:flutter_application_livaty/perfil/categoria.dart';
import 'package:flutter_application_livaty/perfil/gaveta.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_livaty/produtos/cafe_expresso.dart';
import 'package:flutter_application_livaty/produtos/incenso_canela.dart';
import 'package:flutter_application_livaty/produtos/produto_chaverde.dart';


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
        title: "LivaTy", backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      drawer: Gaveta(),
      body: SingleChildScrollView(
          
          child: Column(
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
                          decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                          child: Image(image: NetworkImage(imagens[i])));
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 20,),
              
              Container(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    
                    CategoriaHome("images/chaverde_categoria.png","Chás"),
                    CategoriaHome("images/cafe_categoria.png","Cafés"),
                    //CategoriaHome("images/cha.png","Acessórios"),
                    CategoriaHome("images/incensos_categoria.png","Incensos"),
                    
                    CategoriaHome("images/erva_maisvendidos.png","Mais Vendidos"),


                  ],
                ),
              ),

              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(color: Colors.white),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                      margin: 
                      EdgeInsets.symmetric(vertical: 20,
                      horizontal: 30),
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          
                          Cards("assets/images/chaverde_categoria.png", "chá verde", "250,00", ChaVerde()),
                          // no 'LoginPAge ()' precisa colocar o hiperlink da página!!
                          Cards("assets/images/cafe_categoria.png", "Pó Café Expresso", "12,00", Cafe_expresso()),
                          Cards("assets/images/incensos_categoria.png", "Incenso de canela", "30,00", Incenso_Canela()),

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
