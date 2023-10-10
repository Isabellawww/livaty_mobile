

import 'package:flutter_application_livaty/LivaTy/produto.dart';

class Carrinho{
  static List<MyProduto> listaproduto = [];

  static void adicionarProduto(produto){
    listaproduto.add(produto);
  }

  static void removerProduto(produto){
    listaproduto.remove(produto);
  }
}
