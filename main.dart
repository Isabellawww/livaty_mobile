// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/LivaTy/carrinho.dart';
import 'package:flutter_application_livaty/home.dart';
//import 'package:flutter_application_livaty/pagina_inicial_cadastro.dart';
import 'package:flutter_application_livaty/perfil/cadastro.dart';
import 'package:flutter_application_livaty/perfil/login.dart';
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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 255, 255)),
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 0, 0, 0),
          titleSpacing:
              10, // Defina o valor de titleSpacing para ajustar o espaçamento
        ),
      ),
      //home: MyHomePage(),

      routes: {
        '/': ((context) => const Home()),
        //'/home': (context) => Home(),
        //'/barraPesq': (context) => const MyPesq(),
        '/shopping': (context) => LivaTyPage(),
        '/perfil': (context) => LoginPage(),
        '/faq': (context) => FAQ(),
      },
    );
  }
}
