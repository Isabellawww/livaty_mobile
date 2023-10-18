import 'package:flutter/material.dart';

class NavBar extends AppBar {
  NavBar(BuildContext context, {String? title, bool? centerTitle, super.key, required Color backgroundColor})
      : super(
          title: title != null ? Text(title) : null,
          
          //title: GestureDetector(child: Text("LivaTy"),onTap: (){Navigator.pop(context);},),

          backgroundColor: Color.fromARGB(255, 0, 0, 0), // Definindo a cor preta
          centerTitle: centerTitle,
          actions: [
            CustomSearchBar(), // Substitua o ícone de pesquisa pelo campo de pesquisa
            IconButton(
              onPressed: (() {
                Navigator.pushNamed(context, '/shopping');
              }),
              icon: const Icon(Icons.shopping_cart),  
            ),
            IconButton(
              onPressed: (() {
                Navigator.pushNamed(context, '/perfil');
              }),
              icon: const Icon(Icons.person),
            ),
          ],
        );
}

class CustomSearchBar extends StatefulWidget {
  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showSearch(context: context, delegate: ProductSearch());
      },
      icon: const Icon(Icons.search),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

class ProductSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implementação da exibição dos resultados da pesquisa
    return Center(
      child: Text('Resultados para: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implementação das sugestões durante a digitação
    return const SizedBox.shrink();
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(),
  ));
}
