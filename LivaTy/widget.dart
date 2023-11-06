import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget(this.texto, this.cor, {super.key});

  final String texto;
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: cor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(children: [
          Image.network(
            "https://cdn1.iconfinder.com/data/icons/rcons-basic-work-and-office/16/kitchen_restaurant_coffee_food_drink_tea_cup-64.png",
            height: 15,
            color: Colors.black,
          ),
          DecoratedBox(
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(texto),
            ),
          ),
        ]),
      ),
    );
  }
}
