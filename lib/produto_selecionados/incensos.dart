import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/appbar.dart';

class incensos extends StatefulWidget {
  const incensos({super.key});

  @override
  State<incensos> createState() => _incensosState();
}

class _incensosState extends State<incensos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        context,
        title: "Chás para a vida inteira",
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
