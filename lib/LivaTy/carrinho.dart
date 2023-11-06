// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/LivaTy/produto.dart';
import 'package:flutter_application_livaty/appbar.dart';
import 'package:flutter_application_livaty/LivaTy/carrinhorepository.dart';




class LivaTyPage extends StatefulWidget {
  const LivaTyPage({super.key});

  @override
  State<LivaTyPage> createState() => _LivaTyPageState();
}

class _LivaTyPageState extends State<LivaTyPage> {
  List<MyProduto> listaproduto = Carrinho.getListaProduto;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        context,
        title: "Carrinho",
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
            ),
            itemCount: listaproduto.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.task),
                title: Text(listaproduto[index].nomeProduto),
                subtitle: Text(
                    "R\$  ${listaproduto[index].valorProduto.toString()},00"),
                    trailing: IconButton(icon: Icon(Icons.delete), onPressed: (){
                      listaproduto.remove(listaproduto[index]);
                      setState(() {});
                    },),
              );
            },
          ),
        ),
      ),
    );;
  }
}
