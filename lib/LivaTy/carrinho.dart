import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/appbar.dart';



void main() {
  runApp(const LivaTyPage());
  
}

class Cart{

}

class LivaTyPage extends StatelessWidget {
  const LivaTyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: NavBar(context, title: "Carrinho", centerTitle: true, backgroundColor: Colors.green,),
      body: Center(
        child: const Text(
          'Carrinho vazio 😢',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 210, 233, 214),
        child: SizedBox(
          height: 40,
          child: Align(
            child: Text(
              'Tenha nosso produto na sua dispensa',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
