import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  String image;
  String nome;
  String preco;
  Widget direcao;

 Cards (this.image, this.nome, this.preco, this.direcao, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => direcao));
      },
            child: Container(
        width: 200,
        height: 300,
        margin: const EdgeInsets.symmetric(horizontal: 7.5),
        decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(74, 112, 112, 112))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: NetworkImage(image),
            ),
            Text(
              nome,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              preco,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)),
            )
          ],
        ),
      ),
    );
  }
}