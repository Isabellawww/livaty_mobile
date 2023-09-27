import 'package:flutter/material.dart';

class CategoriaHome extends StatelessWidget {
  CategoriaHome(this.image, this.nome, {super.key});
  final String image;
  final String nome;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.push(context, MaterialPageRoute(builder: (context) => "coloque a sua rota aqui!!!!!!"   ));
      },
      child: Container(
        
        margin: EdgeInsets.symmetric(horizontal: 4),
        
        child: Column(
          
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 55, 
            ),
            Text(
              nome,
              style: TextStyle(fontSize: 10, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}