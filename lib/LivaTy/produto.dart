import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/LivaTy/widget.dart';
import 'package:flutter_application_livaty/appbar.dart';

void main() {
  runApp(const LivaTyPage());
}

class LivaTyPage extends StatelessWidget {
  const LivaTyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(context,
          title: "LivaTy",
          backgroundColor: Color.fromARGB(255, 91, 92, 57),
          centerTitle: true),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                  "https://cdn.pixabay.com/photo/2017/05/19/07/34/teacup-2325722_640.jpg",
                  height: 400),
              const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Bem vindo(a) à LivaTy, aplicativo de chás, cafés e incensos",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  )),
            ],
          ),
          Column(
            children: const [
              MyWidget("Produtos orgânicos", Color.fromRGBO(125, 174, 126, 1)),
              MyWidget("Compre e ganhe uma saúde melhor", Colors.grey),
              MyWidget("Produtos variados e de qualidade",
                  Color.fromRGBO(125, 174, 126, 1)),
            ],
          ),
        ],
      )),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 210, 233, 214),
        child: SizedBox(
            height: 40,
            child: Align(
              child: Text(
                'Tenha nosso produto na sua dispensa',
                style: TextStyle(fontSize: 20),
              ),
            )),
      ),
    );
  }
}
