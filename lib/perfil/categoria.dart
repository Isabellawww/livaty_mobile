import 'package:flutter/material.dart';

class CategoriaHome extends StatelessWidget {
  CategoriaHome(this.image, this.nome, this.estilo, {Key? key})
      : super(key: key);

  final String image;
  final String nome;
  final String estilo;

  @override
  Widget build(BuildContext context) {
    double circleAvatarSize = 55;

    

    return GestureDetector(
      onTap: () {
        // Navegue para a rota desejada aqui.
        // Navigator.push(context, MaterialPageRoute(builder: (context) => SuaRota()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(image),
              radius: circleAvatarSize,
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
