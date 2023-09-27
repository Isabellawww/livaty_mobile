import 'package:flutter/material.dart';
import 'LivaTy/carrinho.dart';
import 'home.dart';
import 'perfil/cadastro.dart';

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
        appBarTheme: AppBarTheme(
          color: Colors.black,
          titleSpacing:10, // Defina o valor de titleSpacing para ajustar o espaçamento
        ),
    
      ),
      //home: MyHomePage(),

      routes: {
        '/': ((context) => const Home()),
        //'/barraPesq': (context) => const MyPesq(),
        '/shopping': (context) => const LivaTyPage(),
        '/perfil': (context) => LoginPage(),
      },
    );
  }
}
