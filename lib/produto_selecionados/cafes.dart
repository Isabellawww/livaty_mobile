import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/appbar.dart';

class Cafes extends StatefulWidget {
  const Cafes({super.key});

  @override
  State<Cafes> createState() => _CafesState();
}

class _CafesState extends State<Cafes> {
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
