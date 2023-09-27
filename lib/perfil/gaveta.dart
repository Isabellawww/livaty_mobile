import 'package:flutter/material.dart';

class Gaveta extends StatefulWidget {
  const Gaveta({super.key});

  @override
  State<Gaveta> createState() => _GavetaState();
}

class _GavetaState extends State<Gaveta> {
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer (children: [
        Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Shopping'),
                onTap: () {
                  Navigator.pushNamed(context, '/shopping');
                },
              ),
              ListTile(
                leading: Icon(Icons.question_mark),
                title: Text('Perfil'),
                onTap: () {
                  Navigator.pushNamed(context, '/perfil');
                },
              ),
              
            ],
          )

        )
      ]);
  }
}