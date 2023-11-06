
import 'package:flutter_application_livaty/LivaTy/produto.dart';

class Carrinho{
  static List<MyProduto> _listaproduto = [];
  static get getListaProduto => _listaproduto;
  set listaproduto(value) => _listaproduto = value;


  static void adicionarProduto(produto){
    _listaproduto.add(produto);
  }

  static void removerProduto(produto){
    _listaproduto.remove(produto);
  }
}
