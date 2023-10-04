import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FAQ'),
        ),
        body: FAQScreen(),
      ),
    );
  }
}

class FAQScreen extends StatelessWidget {
  final List<FAQItem> faqItems = [
    FAQItem(
      question: 'O que é o Flutter?',
      answer:
          'Flutter é um framework de interface do usuário de código aberto criado pelo Google. '
          'Ele permite o desenvolvimento de aplicativos para dispositivos móveis, web e desktop a partir de um único código-base.',
    ),
    FAQItem(
      question: 'Como começar a usar o Flutter?',
      answer:
          'Para começar a usar o Flutter, você precisa instalar o Flutter SDK e configurar seu ambiente de desenvolvimento. '
          'Depois de configurar, você pode criar um novo projeto Flutter e começar a escrever código para seu aplicativo.',
    ),
    FAQItem(
      question: 'O Flutter é gratuito?',
      answer:
          'Sim, o Flutter é um framework de código aberto e gratuito, desenvolvido pelo Google. '
          'Você pode usá-lo para desenvolver aplicativos sem nenhum custo.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: faqItems.length,
      itemBuilder: (context, index) {
        return ExpansionTile(
          title: Text(faqItems[index].question),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(faqItems[index].answer),
            ),
          ],
        );
      },
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({
    required this.question,
    required this.answer,
  });
}
