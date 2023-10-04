// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/LivaTy/carrinho.dart';
import 'package:flutter_application_livaty/home.dart';
import 'package:flutter_application_livaty/perfil/cadastro.dart';
import 'package:flutter_application_livaty/produtos/faq.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LivaTy',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255) ,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          titleSpacing:
              10, // Defina o valor de titleSpacing para ajustar o espaçamento
        ),
      ),
      //home: MyHomePage(),

      routes: {
        '/': ((context) => const Home()),
        //'/barraPesq': (context) => const MyPesq(),
        '/shopping': (context) => const LivaTyPage(),
        '/perfil': (context) => LoginPage(),
        '/faq': (context) => FAQ(),
      },
    );
  }
}
