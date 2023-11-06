import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/appbar.dart';

void main() => runApp(FAQ());

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: NavBar(
          context,
          title: "FAQ",
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: FAQScreen(),
      );
    
  }
}

class FAQScreen extends StatelessWidget {
  final List<FAQItem> faqItems = [
    FAQItem(
      question: 'Como comprar?',
      answer:
          'Ao clicar no produto de interesse, ele mostrará um botão para adicionar ao carrinho. '
          'Quando for deslocado ao carrinho, clique no ícone Carrinho, e ele mostrará a opção de compra.',
    ),
    FAQItem(
      question: 'Quanto é o frete?',
      answer:
          'Isso irá depender de qual região o comprador é. '
          'Varia de 5,00 a 25,00.',
    ),
    FAQItem(
      question: 'O produto vem tudo embaladinho?',
      answer:
          'Sim, todo item é levado para o correio de forma protegida, com bolhas de ar para preservar o item. '
          'A embalagem é de papelão firme, no qual suporta uma boa viagem no veículo usado.',
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
